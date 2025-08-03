import 'package:flutter/material.dart';
import 'package:flutter_layout_grid/flutter_layout_grid.dart';
import 'package:geekyants_flutter_gauges/geekyants_flutter_gauges.dart';
import 'package:obd2_dashboard/generated/obd2_data.pb.dart';
import 'package:obd2_dashboard/models/obd2_data_model.dart';
import 'package:obd2_dashboard/models/serial_reader_model.dart';
import 'package:obd2_dashboard/widgets/car_info_display.dart';
import 'package:obd2_dashboard/widgets/obd_variable_graph.dart';
import 'package:obd2_dashboard/widgets/variable_card.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  Widget buildVehicleSpeed(BuildContext context, OBD2Data data) {
    final ThemeData theme = Theme.of(context);
    return Stack(
      alignment: Alignment.center,
      children: [
        RadialGauge(
          yCenterCoordinate: 0.575,
          track: RadialTrack(
            start: 0,
            end: 240,
            steps: 20,
            hideLabels: false,
            trackLabelFormater: (e) => e.round().toString(),
            trackStyle: TrackStyle(
              showLabel: true,
              primaryRulersWidth: 2.5,
              primaryRulerColor: Colors.grey,
              secondaryRulerColor: Colors.grey,
              labelStyle: theme.textTheme.bodyMedium,
              labelOffset: 10,
            ),
          ),
          needlePointer: [
            NeedlePointer(
              value: data.vehicleSpeed.clamp(0, 240),
              needleWidth: 10,
              tailRadius: 25,
              isInteractive: false,
              tailColor: Colors.grey,
            ),
          ],
        ),
        Positioned(
          bottom: 10,
          child: Text(
            'Speed: ${data.vehicleSpeed.round()} km/h',
            style: theme.textTheme.bodyLarge,
          ),
        ),
      ],
    );
  }

  Widget buildEngineRPM(BuildContext context, OBD2Data data) {
    final ThemeData theme = Theme.of(context);
    return Stack(
      alignment: Alignment.center,
      children: [
        RadialGauge(
          yCenterCoordinate: 0.575,
          track: RadialTrack(
            start: 0,
            end: 8000,
            steps: 1000,
            hideLabels: false,
            trackLabelFormater: (e) => e.round().toString(),
            trackStyle: TrackStyle(
              showLabel: true,
              primaryRulersWidth: 2.5,
              primaryRulerColor: Colors.grey,
              secondaryRulerColor: Colors.grey,
              labelStyle: theme.textTheme.bodyMedium,
            ),
          ),
          needlePointer: [
            NeedlePointer(
              value: data.engineRPM,
              needleWidth: 10,
              tailRadius: 25,
              isInteractive: false,
              tailColor: Colors.grey,
            ),
          ],
        ),
        Positioned(
          bottom: 10,
          child: Text(
            'Engine RPM: ${data.engineRPM.toInt()}',
            style: theme.textTheme.bodyLarge,
          ),
        ),
      ],
    );
  }

  Widget buildFuelLevel(BuildContext context, OBD2Data data) {
    final ThemeData theme = Theme.of(context);
    return Stack(
      alignment: Alignment.center,
      children: [
        RadialGauge(
          yCenterCoordinate: 0.575,
          track: RadialTrack(
            start: 0,
            end: 100,
            steps: 10,
            hideLabels: false,
            trackLabelFormater: (e) => e.round().toString(),
            trackStyle: TrackStyle(
              showLabel: true,
              primaryRulersWidth: 2.5,
              primaryRulerColor: Colors.grey,
              secondaryRulerColor: Colors.grey,
              labelStyle: theme.textTheme.bodyMedium,
            ),
          ),
          needlePointer: [
            NeedlePointer(
              value: data.fuelLevel,
              needleWidth: 10,
              tailRadius: 25,
              isInteractive: false,
              tailColor: Colors.grey,
            ),
          ],
        ),
        Positioned(
          bottom: 10,
          child: Text(
            'Fuel Level: ${data.fuelLevel.toStringAsFixed(2)}%',
            style: theme.textTheme.bodyLarge,
          ),
        ),
      ],
    );
  }

  Widget buildCoolantTemperature(BuildContext context, OBD2Data data) {
    final ThemeData theme = Theme.of(context);
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        FittedBox(
          fit: BoxFit.scaleDown,
          child: Text(
            'Coolant Temperature:',
            style: theme.textTheme.bodySmall,
          ),
        ),
        FittedBox(
          fit: BoxFit.scaleDown,
          child: Text(
            '${data.coolantTemperature.round()}°C',
            style: theme.textTheme.bodyMedium,
          ),
        ),
        const SizedBox(height: 5),
        Expanded(
          child: LinearGauge(
            start: 0,
            end: 200,
            steps: 40,
            rulers: RulerStyle(
              rulerPosition: RulerPosition.bottom,
              textStyle: theme.textTheme.bodySmall,
              primaryRulerColor: Colors.grey,
              secondaryRulerColor: Colors.grey,
              showLabel: true,
            ),
            customLabels: [
              ...List.generate(
                (220) ~/ 40 + 1,
                (index) => CustomRulerLabel(
                  text: (index * 40).toString(),
                  value: index * 40,
                ),
              ),
            ],
            fillExtend: true,
            extendLinearGauge: 1,
            pointers: [
              Pointer(
                value: data.coolantTemperature.clamp(0, 200),
                shape: PointerShape.triangle,
                enableAnimation: false,
                isInteractive: false,
                pointerPosition: PointerPosition.top,
              ),
            ],
            valueBar: [
              ValueBar(
                value: data.coolantTemperature.clamp(0, 200),
                color: Colors.red,
                enableAnimation: false,
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget buildAmbientAirTemperature(BuildContext context, OBD2Data data) {
    final ThemeData theme = Theme.of(context);
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        FittedBox(
          fit: BoxFit.scaleDown,
          child: Text(
            'Ambient Temperature:',
            style: theme.textTheme.bodySmall,
          ),
        ),
        FittedBox(
          fit: BoxFit.scaleDown,
          child: Text(
            '${data.ambientAirTemperature.round()}°C',
            style: theme.textTheme.bodyMedium,
          ),
        ),
        const SizedBox(height: 5),
        Expanded(
          child: LinearGauge(
            start: 0,
            end: 200,
            steps: 40,
            rulers: RulerStyle(
              rulerPosition: RulerPosition.bottom,
              textStyle: theme.textTheme.bodySmall,
              primaryRulerColor: Colors.grey,
              secondaryRulerColor: Colors.grey,
              showLabel: true,
            ),
            customLabels: [
              ...List.generate(
                (220) ~/ 40 + 1,
                (index) => CustomRulerLabel(
                  text: (index * 40).toString(),
                  value: index * 40,
                ),
              ),
            ],
            fillExtend: true,
            extendLinearGauge: 1,
            pointers: [
              Pointer(
                value: data.ambientAirTemperature.clamp(0, 200),
                shape: PointerShape.triangle,
                enableAnimation: false,
                isInteractive: false,
                pointerPosition: PointerPosition.top,
              ),
            ],
            valueBar: [
              ValueBar(
                value: data.ambientAirTemperature.clamp(0, 200),
                color: Colors.red,
                enableAnimation: false,
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget buildOilTemperature(BuildContext context, OBD2Data data) {
    final ThemeData theme = Theme.of(context);
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        FittedBox(
          fit: BoxFit.scaleDown,
          child: Text(
            'Oil Temperature:',
            style: theme.textTheme.bodySmall,
          ),
        ),
        FittedBox(
          fit: BoxFit.scaleDown,
          child: Text(
            '${data.engineOilTemperature.round()}°C',
            style: theme.textTheme.bodyMedium,
          ),
        ),
        const SizedBox(height: 5),
        Expanded(
          child: LinearGauge(
            start: 0,
            end: 200,
            steps: 40,
            rulers: RulerStyle(
              rulerPosition: RulerPosition.bottom,
              textStyle: theme.textTheme.bodySmall,
              primaryRulerColor: Colors.grey,
              secondaryRulerColor: Colors.grey,
              showLabel: true,
            ),
            customLabels: [
              ...List.generate(
                (220) ~/ 40 + 1,
                (index) => CustomRulerLabel(
                  text: (index * 40).toString(),
                  value: index * 40,
                ),
              ),
            ],
            fillExtend: true,
            extendLinearGauge: 1,
            pointers: [
              Pointer(
                value: data.engineOilTemperature.clamp(0, 200),
                shape: PointerShape.triangle,
                enableAnimation: false,
                isInteractive: false,
                pointerPosition: PointerPosition.top,
              ),
            ],
            valueBar: [
              ValueBar(
                value: data.engineOilTemperature.clamp(0, 200),
                color: Colors.red,
                enableAnimation: false,
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget buildEngineLoad(BuildContext context, OBD2Data data) {
    final ThemeData theme = Theme.of(context);
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: [
        FittedBox(
          fit: BoxFit.scaleDown,
          child: Text(
            'Engine Load:',
            style: theme.textTheme.bodySmall,
          ),
        ),
        FittedBox(
          fit: BoxFit.scaleDown,
          child: Text('${data.absoluteLoad.round()}%'),
        ),
        Expanded(
          child: LinearGauge(
            showLinearGaugeContainer: true,
            start: 0,
            end: 100,
            steps: 10,
            rulers: RulerStyle(
              rulerPosition: RulerPosition.bottom,
              textStyle: theme.textTheme.bodySmall,
              primaryRulerColor: Colors.grey,
              secondaryRulerColor: Colors.grey,
              showLabel: true,
            ),
            customLabels: List.generate(
              11,
              (i) => CustomRulerLabel(text: (i * 10).toString(), value: i * 10),
            ),
            fillExtend: true,
            extendLinearGauge: 1,
            valueBar: [
              ValueBar(
                value: data.absoluteLoad,
                enableAnimation: false,
                linearGradient: LinearGradient(
                  colors: [
                    Color.lerp(
                      Colors.green,
                      Colors.red,
                      data.absoluteLoad / 100.0,
                    )!,
                    Colors.green,
                  ],
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget buildThrottlePosition(BuildContext context, OBD2Data data) {
    final ThemeData theme = Theme.of(context);
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: [
        FittedBox(
          fit: BoxFit.scaleDown,
          child: Text(
            'Throttle:',
            style: theme.textTheme.bodySmall,
          ),
        ),
        FittedBox(
          fit: BoxFit.scaleDown,
          child: Text('${data.throttlePosition.round()}%'),
        ),
        Expanded(
          child: LinearGauge(
            showLinearGaugeContainer: true,
            start: 0,
            end: 100,
            steps: 10,
            gaugeOrientation: GaugeOrientation.vertical,
            rulers: RulerStyle(
              rulerPosition: RulerPosition.left,
              textStyle: theme.textTheme.bodySmall,
              primaryRulerColor: Colors.grey,
              secondaryRulerColor: Colors.grey,
              showLabel: true,
            ),
            customLabels: List.generate(
              11,
              (i) => CustomRulerLabel(text: (i * 10).toString(), value: i * 10),
            ),
            fillExtend: true,
            extendLinearGauge: 1,
            valueBar: [
              ValueBar(
                value: data.throttlePosition,
                enableAnimation: false,
                linearGradient: LinearGradient(
                  colors: [
                    Color.lerp(
                      Colors.green,
                      Colors.red,
                      data.throttlePosition / 100.0,
                    )!,
                    Colors.green,
                  ],
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget buildRelativeThrottlePosition(BuildContext context, OBD2Data data) {
    final ThemeData theme = Theme.of(context);
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: [
        FittedBox(
          fit: BoxFit.scaleDown,
          child: Text(
            'Relative Throttle:',
            style: theme.textTheme.bodySmall,
          ),
        ),
        FittedBox(
          fit: BoxFit.scaleDown,
          child: Text('${data.relativeThrottlePosition.round()}%'),
        ),
        Expanded(
          child: LinearGauge(
            showLinearGaugeContainer: true,
            start: 0,
            end: 100,
            steps: 10,
            gaugeOrientation: GaugeOrientation.vertical,
            rulers: RulerStyle(
              rulerPosition: RulerPosition.left,
              textStyle: theme.textTheme.bodySmall,
              primaryRulerColor: Colors.grey,
              secondaryRulerColor: Colors.grey,
              showLabel: true,
            ),
            customLabels: List.generate(
              11,
              (i) => CustomRulerLabel(text: (i * 10).toString(), value: i * 10),
            ),
            fillExtend: true,
            extendLinearGauge: 1,
            valueBar: [
              ValueBar(
                value: data.relativeThrottlePosition,
                enableAnimation: false,
                linearGradient: LinearGradient(
                  colors: [
                    Color.lerp(
                      Colors.green,
                      Colors.red,
                      data.relativeThrottlePosition / 100.0,
                    )!,
                    Colors.green,
                  ],
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget buildControlModuleVoltage(BuildContext context, OBD2Data data) {
    final ThemeData theme = Theme.of(context);
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: [
        FittedBox(
          fit: BoxFit.scaleDown,
          child: Text(
            'CM Voltage:',
            style: theme.textTheme.bodySmall,
            textAlign: TextAlign.center,
          ),
        ),
        FittedBox(
          fit: BoxFit.scaleDown,
          child: Text('${data.controlModuleVoltage.round()} V'),
        ),
        Expanded(
          child: LinearGauge(
            showLinearGaugeContainer: true,
            start: 0,
            end: 60,
            steps: 10,
            gaugeOrientation: GaugeOrientation.vertical,
            rulers: RulerStyle(
              rulerPosition: RulerPosition.left,
              textStyle: theme.textTheme.bodySmall,
              primaryRulerColor: Colors.grey,
              secondaryRulerColor: Colors.grey,
              showLabel: true,
            ),
            customLabels: List.generate(
              7,
              (i) => CustomRulerLabel(text: (i * 10).toString(), value: i * 10),
            ),
            fillExtend: true,
            extendLinearGauge: 1,
            valueBar: [
              ValueBar(
                value: data.controlModuleVoltage,
                enableAnimation: false,
                color: Colors.yellow,
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget buildTimingAdvance(BuildContext context, OBD2Data data) {
    final ThemeData theme = Theme.of(context);
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: [
        FittedBox(
          fit: BoxFit.scaleDown,
          child: Text(
            'Timing Advance: ${data.timingAdvance.round()}°',
            style: theme.textTheme.bodySmall,
            textAlign: TextAlign.center,
          ),
        ),
        const SizedBox(height: 5),
        Expanded(
          child: LinearGauge(
            showLinearGaugeContainer: true,
            start: -64,
            end: 64,
            steps: 20,
            gaugeOrientation: GaugeOrientation.horizontal,
            rulers: RulerStyle(
              rulerPosition: RulerPosition.bottom,
              textStyle: theme.textTheme.bodySmall,
              primaryRulerColor: Colors.grey,
              secondaryRulerColor: Colors.grey,
              showLabel: true,
            ),
            customLabels: List.generate(
              (128 ~/ 16) + 1,
              (i) => CustomRulerLabel(
                text: (i * 16 - 64).toString(),
                value: i * 16 - 64,
              ),
            ),
            fillExtend: true,
            extendLinearGauge: 1,
            pointers: [
              Pointer(
                value: data.timingAdvance,
                shape: PointerShape.triangle,
                enableAnimation: false,
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget buildEvapPressure(BuildContext context, OBD2Data data) {
    final ThemeData theme = Theme.of(context);
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: [
        FittedBox(
          fit: BoxFit.scaleDown,
          child: Text(
            'Evap Vapor Pressure: ${data.evapVaporPressure.round()} Pa',
            style: theme.textTheme.bodySmall,
            textAlign: TextAlign.center,
          ),
        ),
        const SizedBox(height: 5),
        Expanded(
          child: LinearGauge(
            showLinearGaugeContainer: true,
            start: -32000,
            end: 32000,
            steps: 8000,
            gaugeOrientation: GaugeOrientation.horizontal,
            rulers: RulerStyle(
              rulerPosition: RulerPosition.bottom,
              textStyle: theme.textTheme.bodySmall,
              primaryRulerColor: Colors.grey,
              secondaryRulerColor: Colors.grey,
              showLabel: true,
            ),
            customLabels: List.generate(
              (64000 ~/ 16000) + 1,
              (i) => CustomRulerLabel(
                text: (i * 16000 - 32000).toString(),
                value: i * 16000 - 32000,
              ),
            ),
            fillExtend: true,
            extendLinearGauge: 1,
            pointers: [
              Pointer(
                value: data.evapVaporPressure,
                shape: PointerShape.triangle,
                enableAnimation: false,
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget buildBarometricPressure(BuildContext context, OBD2Data data) {
    final ThemeData theme = Theme.of(context);
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: [
        FittedBox(
          fit: BoxFit.scaleDown,
          child: Text(
            'Barometric Pressure: ${data.absBarometricPressure.round()} kPa',
            style: theme.textTheme.bodySmall,
            textAlign: TextAlign.center,
          ),
        ),
        const SizedBox(height: 5),
        Expanded(
          child: LinearGauge(
            showLinearGaugeContainer: true,
            start: 0,
            end: 250,
            steps: 25,
            gaugeOrientation: GaugeOrientation.horizontal,
            rulers: RulerStyle(
              rulerPosition: RulerPosition.bottom,
              textStyle: theme.textTheme.bodySmall,
              primaryRulerColor: Colors.grey,
              secondaryRulerColor: Colors.grey,
              showLabel: true,
            ),
            customLabels: List.generate(
              (250 ~/ 25) + 1,
              (i) => CustomRulerLabel(
                text: (i * 25).toString(),
                value: i * 25,
              ),
            ),
            fillExtend: true,
            extendLinearGauge: 1,
            pointers: [
              Pointer(
                value: data.absBarometricPressure,
                shape: PointerShape.triangle,
                enableAnimation: false,
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget buildEthanolPercent(BuildContext context, OBD2Data data) {
    final ThemeData theme = Theme.of(context);
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: [
        FittedBox(
          fit: BoxFit.scaleDown,
          child: Text(
            'Ethanol Fuel %:',
            style: theme.textTheme.bodySmall,
          ),
        ),
        FittedBox(
          fit: BoxFit.scaleDown,
          child: Text('${data.ethanolFuelPercentage.round()}%'),
        ),
        Expanded(
          child: LinearGauge(
            showLinearGaugeContainer: true,
            start: 0,
            end: 100,
            steps: 10,
            rulers: RulerStyle(
              rulerPosition: RulerPosition.bottom,
              textStyle: theme.textTheme.bodySmall,
              primaryRulerColor: Colors.grey,
              secondaryRulerColor: Colors.grey,
              showLabel: true,
            ),
            customLabels: List.generate(
              11,
              (i) => CustomRulerLabel(text: (i * 10).toString(), value: i * 10),
            ),
            fillExtend: true,
            extendLinearGauge: 1,
            valueBar: [
              ValueBar(
                value: data.ethanolFuelPercentage,
                enableAnimation: false,
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget buildErrorCodes(BuildContext context, OBD2Data data) {
    final ThemeData theme = Theme.of(context);
    List<String> errorCodes = [];
    if (data.errorCodes.length >= 5) {
      for (int i = 0; i <= data.errorCodes.length - 5; i += 5) {
        errorCodes.add(data.errorCodes.substring(i, i + 5));
      }
    }

    if (errorCodes.isEmpty) {
      return const Text('No errors detected');
    }

    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        FittedBox(
          fit: BoxFit.scaleDown,
          child: Text('${errorCodes.length} error(s) detected:'),
        ),
        for (String code in errorCodes)
          FittedBox(
            fit: BoxFit.scaleDown,
            child: Text(
              code,
              style: theme.textTheme.bodyLarge,
            ),
          ),
      ],
    );
  }

  Widget buildConverter11(BuildContext context, OBD2Data data) {
    final ThemeData theme = Theme.of(context);
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const FittedBox(
          fit: BoxFit.scaleDown,
          child: Text('Bank 1, Sector 1:'),
        ),
        FittedBox(
          fit: BoxFit.scaleDown,
          child: Text(
            '${data.catalystTemp11}°C',
            style: theme.textTheme.displaySmall,
          ),
        ),
      ],
    );
  }

  Widget buildConverter21(BuildContext context, OBD2Data data) {
    final ThemeData theme = Theme.of(context);
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const FittedBox(
          fit: BoxFit.scaleDown,
          child: Text('Bank 2, Sector 1:'),
        ),
        FittedBox(
          fit: BoxFit.scaleDown,
          child: Text(
            '${data.catalystTemp21}°C',
            style: theme.textTheme.displaySmall,
          ),
        ),
      ],
    );
  }

  Widget buildConverter12(BuildContext context, OBD2Data data) {
    final ThemeData theme = Theme.of(context);
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const FittedBox(
          fit: BoxFit.scaleDown,
          child: Text('Bank 1, Sector 2:'),
        ),
        FittedBox(
          fit: BoxFit.scaleDown,
          child: Text(
            '${data.catalystTemp12}°C',
            style: theme.textTheme.displaySmall,
          ),
        ),
      ],
    );
  }

  Widget buildConverter22(BuildContext context, OBD2Data data) {
    final ThemeData theme = Theme.of(context);
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const FittedBox(
          fit: BoxFit.scaleDown,
          child: Text('Bank 2, Sector 2:'),
        ),
        FittedBox(
          fit: BoxFit.scaleDown,
          child: Text(
            '${data.catalystTemp22}°C',
            style: theme.textTheme.displaySmall,
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    final OBD2DataModel dataModel = context.watch<OBD2DataModel>();
    final OBD2Data data = dataModel.data;
    final SerialReaderModel serial = context.watch<SerialReaderModel>();

    final ThemeData theme = Theme.of(context);

    return LayoutGrid(
      areas: '''
                car_info       speed_gauge     rpm_gauge          fuel_level
                temps_group    throttles       pressures         main_graph
                temps_group    throttles       converters_group   errors_group
              ''',
      columnSizes: [
        1.fr,
        1.fr,
        1.2.fr,
        1.2.fr,
      ],
      rowSizes: [
        2.25.fr,
        2.25.fr,
        1.75.fr,
      ],
      columnGap: 5,
      rowGap: 5,
      gridFit: GridFit.expand,
      children: [
        VariableCard(
          child: SizedBox.expand(
            child: CarInfoDisplay(model: dataModel),
          ),
        ).inGridArea('car_info'),
        VariableCard(
          padding: 0,
          child: SizedBox.expand(
            child: buildFuelLevel(context, data),
          ),
        ).inGridArea('fuel_level'),
        VariableCard(
          padding: 0,
          child: SizedBox.expand(
            child: buildVehicleSpeed(context, data),
          ),
        ).inGridArea('speed_gauge'),
        VariableCard(
          padding: 0,
          child: SizedBox.expand(
            child: buildEngineRPM(context, data),
          ),
        ).inGridArea('rpm_gauge'),
        VariableCard(
          child: OBD2VariableGraph(model: dataModel),
        ).inGridArea('main_graph'),
        VariableCard(
          child: SizedBox.expand(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                if (data.hasCoolantTemperature() ||
                    !serial.isConnected ||
                    !data.isReady)
                  Expanded(child: buildCoolantTemperature(context, data)),
                if (data.hasAmbientAirTemperature() ||
                    !serial.isConnected ||
                    !data.isReady)
                  Expanded(child: buildAmbientAirTemperature(context, data)),
                if (data.hasEngineOilTemperature() ||
                    !serial.isConnected ||
                    !data.isReady)
                  Expanded(child: buildOilTemperature(context, data)),
                if (data.hasAbsoluteLoad() ||
                    !serial.isConnected ||
                    !data.isReady)
                  Expanded(child: buildEngineLoad(context, data)),
              ],
            ),
          ),
        ).inGridArea('temps_group'),
        VariableCard(
          child: SizedBox.expand(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                if (data.hasEvapVaporPressure() ||
                    !serial.isConnected ||
                    !data.isReady)
                  Expanded(child: buildEvapPressure(context, data)),
                if (data.hasAbsBarometricPressure() ||
                    !serial.isConnected ||
                    !data.isReady)
                  Expanded(child: buildBarometricPressure(context, data)),
                if (data.hasEthanolFuelPercentage() ||
                    !serial.isConnected ||
                    !data.isReady)
                  Expanded(child: buildEthanolPercent(context, data)),
              ],
            ),
          ),
        ).inGridArea('pressures'),
        VariableCard(
          child: Column(
            children: [
              Expanded(
                flex: 5,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    if (data.hasThrottlePosition() ||
                        !serial.isConnected ||
                        !data.isReady)
                      Flexible(
                        child: buildThrottlePosition(context, data),
                      ),
                    if (data.hasRelativeThrottlePosition() ||
                        !serial.isConnected ||
                        !data.isReady)
                      Flexible(
                        child: buildRelativeThrottlePosition(
                          context,
                          data,
                        ),
                      ),
                    if (data.hasControlModuleVoltage() ||
                        !serial.isConnected ||
                        !data.isReady)
                      Flexible(
                        child: buildControlModuleVoltage(context, data),
                      ),
                  ],
                ),
              ),
              Flexible(child: buildTimingAdvance(context, data)),
              Flexible(
                flex: 1,
                child: Column(
                  children: [
                    const Text('Engine Runtime:'),
                    Expanded(
                      child: FittedBox(
                        fit: BoxFit.contain,
                        child: Text(
                          '${data.engineRuntime.round().toString().padLeft(3, '0')} s',
                          style: theme.textTheme.bodyLarge?.copyWith(
                            height: 1.1,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ).inGridArea('throttles'),
        VariableCard(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Flexible(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    if (data.hasCatalystTemp11() ||
                        !serial.isConnected ||
                        !data.isReady)
                      Flexible(child: buildConverter11(context, data)),
                    if (data.hasCatalystTemp21() ||
                        !serial.isConnected ||
                        !data.isReady)
                      Flexible(child: buildConverter21(context, data)),
                  ],
                ),
              ),
              Flexible(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    if (data.hasCatalystTemp12() ||
                        !serial.isConnected ||
                        !data.isReady)
                      Flexible(child: buildConverter12(context, data)),
                    if (data.hasCatalystTemp22() ||
                        !serial.isConnected ||
                        !data.isReady)
                      Flexible(child: buildConverter22(context, data)),
                  ],
                ),
              ),
            ],
          ),
        ).inGridArea('converters_group'),
        VariableCard(
          child: Center(
            child: buildErrorCodes(context, data),
          ),
        ).inGridArea('errors_group'),
      ],
    );
  }
}
