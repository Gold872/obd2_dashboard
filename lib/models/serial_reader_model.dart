import 'dart:async';
import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:flutter_libserialport/flutter_libserialport.dart';
import 'package:obd2_dashboard/services/logger.dart';

class SerialReaderModel extends ChangeNotifier {
  Timer? _readTimer;

  final StreamController<Uint8List> _streamController =
      StreamController.broadcast();

  Stream<Uint8List> get dataStream => _streamController.stream;

  SerialPort? port;

  bool get isConnected => port != null && port!.isOpen;

  final List<VoidCallback> _closeListeners = [];

  void addCloseListener(VoidCallback listener) {
    _closeListeners.add(listener);
  }

  void removeCloseListener(VoidCallback listener) {
    _closeListeners.remove(listener);
  }

  Future<bool> openPort(String portName) async {
    port?.close();

    port = SerialPort(portName);

    try {
      port!.openReadWrite();

      final SerialPortConfig portConfig = port!.config;
      portConfig.baudRate = 115200;

      if (portConfig.parity != SerialPortParity.invalid) {
        portConfig.parity = SerialPortParity.none;
      }
      if (portConfig.stopBits != -1) {
        portConfig.stopBits = 0;
      }
      if (portConfig.dtr != SerialPortDtr.invalid) {
        portConfig.dtr = SerialPortDtr.off;
      }
      if (portConfig.xonXoff != SerialPortXonXoff.invalid) {
        portConfig.xonXoff = SerialPortXonXoff.disabled;
      }

      port!.config = portConfig;

      _readTimer = Timer.periodic(
        const Duration(milliseconds: 10),
        _readNewData,
      );

      logger.info('Listening for data on $portName');

      notifyListeners();
      return true;
    } catch (_) {
      logger.info('Failed to open serial port on $portName');
      notifyListeners();
      port = null;
      return false;
    }
  }

  Future<void> close() async {
    logger.info('Closing port');
    try {
      port?.close();
      port?.dispose();
    } catch (_) {}

    _readTimer?.cancel();
    port = null;

    for (VoidCallback listener in _closeListeners) {
      listener();
    }

    notifyListeners();
  }

  void _readNewData(_) {
    if (port == null) return;
    if (port!.bytesAvailable == 0) {
      return;
    }
    try {
      Uint8List data = port!.read(port!.bytesAvailable);
      _streamController.add(data);
    } catch (e) {
      logger.error('Error while reading serial data', e);
      close();
    }
  }

  @override
  void dispose() {
    close();
    super.dispose();
  }
}
