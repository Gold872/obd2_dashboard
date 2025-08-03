import 'dart:async';
import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:obd2_dashboard/generated/obd2_data.pb.dart';
import 'package:obd2_dashboard/models/serial_reader_model.dart';
import 'package:obd2_dashboard/services/logger.dart';

class OBD2DataModel extends ChangeNotifier {
  final OBD2Data data = OBD2Data();

  final StreamController<OBD2Data> _controller = StreamController.broadcast();

  Stream<OBD2Data> get stream => _controller.stream;

  StreamSubscription<Uint8List>? _serialSubscription;

  void listen(SerialReaderModel reader) {
    reader.addCloseListener(onSerialClose);
    _serialSubscription = reader.dataStream.listen((data) {
      try {
        String message = utf8.decode(data);

        logger.info('Received message from serial: ${message.trim()}');
        return;
      } catch (e) {
        logger.trace('Failed to decode UTF8 data from serial', e);
      }

      try {
        OBD2Data incoming = OBD2Data.fromBuffer(data);

        this.data.mergeFromMessage(incoming);

        _controller.add(incoming);

        // logger.debug('Decoded proto message');
        notifyListeners();
      } catch (e) {
        logger.debug('Failed to decode protobuf data from serial', e);
      }
    });
  }

  void onSerialClose() {
    data.clear();
  }

  @override
  void dispose() {
    _serialSubscription?.cancel();

    super.dispose();
  }
}
