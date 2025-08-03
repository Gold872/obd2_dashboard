import 'dart:async';

import 'package:change_case/change_case.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:obd2_dashboard/generated/obd2_data.pb.dart';
import 'package:obd2_dashboard/models/obd2_data_model.dart';

class OBD2VariableGraph extends StatefulWidget {
  final OBD2DataModel model;

  const OBD2VariableGraph({
    super.key,
    required this.model,
  });

  @override
  State<OBD2VariableGraph> createState() => _OBD2VariableGraphState();
}

class _OBD2VariableGraphState extends State<OBD2VariableGraph> {
  List<FlSpot> values = [];
  StreamSubscription<OBD2Data>? dataSubscrition;
  DateTime startTime = DateTime.now();

  late TransformationController transformationController;

  int? fieldNumber;

  @override
  void initState() {
    final OBD2Data defaultData = OBD2Data.getDefault();
    fieldNumber ??= OBD2Data.getDefault().info_.fieldInfo.keys.firstWhere(
      (e) => defaultData.getField(e) is num,
    );
    clearData();
    dataSubscrition = widget.model.stream.listen(onNewData);

    transformationController = TransformationController();
    super.initState();
  }

  @override
  void dispose() {
    dataSubscrition?.cancel();
    transformationController.dispose();
    super.dispose();
  }

  @override
  void didUpdateWidget(OBD2VariableGraph oldWidget) {
    if (oldWidget.model != widget.model) {
      dataSubscrition?.cancel();
      dataSubscrition = widget.model.stream.listen(onNewData);
    }
    super.didUpdateWidget(oldWidget);
  }

  void clearData() {
    values.clear();
    values.addAll([
      const FlSpot(-100, 0),
      const FlSpot(-100, 0),
    ]);
  }

  void onNewData(OBD2Data data) {
    if (fieldNumber == null) return;
    final double currentTime =
        (DateTime.now().microsecondsSinceEpoch -
            startTime.microsecondsSinceEpoch) /
        1e6;
    values.removeWhere(
      (e) => currentTime - e.x > 60,
    );

    values.add(
      FlSpot(
        currentTime,
        (data.getField(fieldNumber!) as num).toDouble(),
      ),
    );

    if (currentTime - values.first.x < 60) {
      values.insert(
        0,
        FlSpot(
          currentTime - 60,
          values.first.y,
        ),
      );
    }
    setState(() {});
  }

  Widget buildDropdown() {
    final OBD2Data defaultData = OBD2Data.getDefault();
    return DropdownButton(
      isDense: true,
      items: defaultData.info_.fieldInfo.keys
          .where((e) => defaultData.getField(e) is num)
          .map(
            (key) => DropdownMenuItem(
              value: key,
              child: Text(
                defaultData.info_.fieldInfo[key]!.name.toCapitalCase(),
              ),
            ),
          )
          .toList(),
      value: fieldNumber,
      onChanged: (value) {
        if (fieldNumber != value) {
          clearData();
          startTime = DateTime.now();
        }
        setState(() => fieldNumber = value);
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        buildDropdown(),
        const SizedBox(height: 10),
        Expanded(
          child: LineChart(
            transformationConfig: FlTransformationConfig(
              scaleAxis: FlScaleAxis.horizontal,
              trackpadScrollCausesScale: true,
              transformationController: transformationController,
              panEnabled: true,
              scaleEnabled: true,
              minScale: 1,
              maxScale: 15.0,
            ),
            LineChartData(
              clipData: const FlClipData(
                top: true,
                bottom: true,
                left: true,
                right: true,
              ),
              borderData: FlBorderData(
                show: true,
                border: Border.all(color: Colors.grey),
              ),
              titlesData: FlTitlesData(
                bottomTitles: AxisTitles(
                  sideTitles: SideTitles(
                    showTitles: true,
                    reservedSize: 38,
                    maxIncluded: false,
                    getTitlesWidget: (value, meta) {
                      final time = startTime.add(
                        Duration(microseconds: (value * 1e6).round()),
                      );
                      return SideTitleWidget(
                        meta: meta,
                        child: Text(
                          '${time.hour}:${time.second.toString().padRight(2, '0')}',
                        ),
                      );
                    },
                  ),
                ),
                topTitles: const AxisTitles(),
                leftTitles: AxisTitles(
                  axisNameWidget: Text(
                    OBD2Data.getDefault().info_
                            .fieldName(fieldNumber ?? 0)
                            ?.toCapitalCase() ??
                        '',
                  ),
                  axisNameSize: 24,
                ),
              ),
              lineBarsData: [
                LineChartBarData(
                  spots: values,
                  isCurved: false,
                  preventCurveOverShooting: true,
                  belowBarData: BarAreaData(
                    show: true,
                  ),
                  dotData: const FlDotData(
                    show: false,
                  ),
                  barWidth: 2.5,
                ),
              ],
            ),
            duration: const Duration(milliseconds: 10),
          ),
        ),
      ],
    );
  }
}
