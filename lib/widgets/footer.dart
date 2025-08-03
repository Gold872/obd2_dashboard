import 'package:flutter/material.dart';
import 'package:flutter_libserialport/flutter_libserialport.dart';
import 'package:obd2_dashboard/models/obd2_data_model.dart';
import 'package:obd2_dashboard/models/serial_reader_model.dart';
import 'package:provider/provider.dart';

class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    final SerialReaderModel reader = context.watch<SerialReaderModel>();
    final OBD2DataModel dataModel = context.watch<OBD2DataModel>();

    return Container(
      color: Colors.black,
      height: 32,
      child: NavigationToolbar(
        middle: Text(
          'VIN: ${dataModel.data.hasVin() ? dataModel.data.vin : 'Unknown'}',
        ),
        trailing: MenuAnchor(
          menuChildren: SerialPort.availablePorts
              .toSet()
              .map(
                (e) => MenuItemButton(
                  onPressed: () => reader.openPort(e),
                  closeOnActivate: true,
                  child: Padding(
                    padding: const EdgeInsets.all(4),
                    child: Text(e),
                  ),
                ),
              )
              .toList(),
          builder: (context, controller, child) {
            return IconButton(
              alignment: Alignment.center,
              padding: const EdgeInsets.all(4),
              onPressed: () {
                if (reader.isConnected) {
                  reader.close();
                } else {
                  controller.open();
                }
              },
              icon: reader.isConnected
                  ? const Icon(Icons.usb_off)
                  : const Icon(Icons.usb),
            );
          },
        ),
      ),
    );
  }
}
