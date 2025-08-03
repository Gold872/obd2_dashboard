import 'package:change_case/change_case.dart';
import 'package:flutter/material.dart';
import 'package:obd2_dashboard/models/obd2_data_model.dart';
import 'package:obd2_dashboard/services/vin_lookup.dart';

class CarInfoDisplay extends StatefulWidget {
  final OBD2DataModel model;

  const CarInfoDisplay({super.key, required this.model});

  @override
  State<CarInfoDisplay> createState() => _CarInfoDisplayState();
}

class _CarInfoDisplayState extends State<CarInfoDisplay> {
  CarManufacturerData? manufacturerData;
  String? vin;

  @override
  void initState() {
    widget.model.addListener(onOBD2Update);
    onOBD2Update();
    super.initState();
  }

  @override
  void dispose() {
    widget.model.removeListener(onOBD2Update);
    super.dispose();
  }

  @override
  void didUpdateWidget(CarInfoDisplay oldWidget) {
    if (oldWidget.model != widget.model) {
      oldWidget.model.removeListener(onOBD2Update);
      widget.model.addListener(onOBD2Update);
    }
    super.didUpdateWidget(oldWidget);
  }

  Future<void> onOBD2Update() async {
    if (widget.model.data.vin.isEmpty) {
      return;
    }
    if (widget.model.data.vin != vin || vin == null) {
      vin = widget.model.data.vin;
      final CarManufacturerData? manufacturerData =
          await lookupManufacturerFromVIN(vin!);

      if (manufacturerData != null && mounted) {
        setState(() {
          this.manufacturerData = manufacturerData;
        });
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    String carDetails = 'Unknown Car';
    if (manufacturerData != null) {
      carDetails = '';
    }
    if (manufacturerData?.modelYear != null) {
      carDetails += '${manufacturerData!.modelYear!} ';
    }
    if (manufacturerData?.make != null) {
      carDetails += '${manufacturerData!.make!.toCapitalCase()} ';
    }
    if (manufacturerData?.model != null) {
      carDetails += manufacturerData!.model!;
    }

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          if (manufacturerData != null && manufacturerData!.make != null) ...[
            Image.network(
              'https://raw.githubusercontent.com/filippofilip95/car-logos-dataset/refs/heads/master/logos/thumb/${manufacturerData!.make!.toLowerCase()}.png',
              cacheWidth: 250,
              cacheHeight: 150,
              width: 250,
            ),
          ] else
            const SizedBox(
              height: 150,
              child: Placeholder(),
            ),
          Text(carDetails),
        ],
      ),
    );
  }
}
