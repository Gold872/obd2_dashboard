// This is a generated file - do not edit.
//
// Generated from obd2_data.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'obd2_data.pbenum.dart';

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

export 'obd2_data.pbenum.dart';

class OxygenSensor extends $pb.GeneratedMessage {
  factory OxygenSensor({
    $core.double? voltage,
    $core.double? shortTermFuelTrim,
  }) {
    final result = create();
    if (voltage != null) result.voltage = voltage;
    if (shortTermFuelTrim != null) result.shortTermFuelTrim = shortTermFuelTrim;
    return result;
  }

  OxygenSensor._();

  factory OxygenSensor.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory OxygenSensor.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'OxygenSensor',
      createEmptyInstance: create)
    ..a<$core.double>(1, _omitFieldNames ? '' : 'voltage', $pb.PbFieldType.OF)
    ..a<$core.double>(
        2, _omitFieldNames ? '' : 'shortTermFuelTrim', $pb.PbFieldType.OF,
        protoName: 'shortTermFuelTrim')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  OxygenSensor clone() => OxygenSensor()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  OxygenSensor copyWith(void Function(OxygenSensor) updates) =>
      super.copyWith((message) => updates(message as OxygenSensor))
          as OxygenSensor;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static OxygenSensor create() => OxygenSensor._();
  @$core.override
  OxygenSensor createEmptyInstance() => create();
  static $pb.PbList<OxygenSensor> createRepeated() =>
      $pb.PbList<OxygenSensor>();
  @$core.pragma('dart2js:noInline')
  static OxygenSensor getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<OxygenSensor>(create);
  static OxygenSensor? _defaultInstance;

  @$pb.TagNumber(1)
  $core.double get voltage => $_getN(0);
  @$pb.TagNumber(1)
  set voltage($core.double value) => $_setFloat(0, value);
  @$pb.TagNumber(1)
  $core.bool hasVoltage() => $_has(0);
  @$pb.TagNumber(1)
  void clearVoltage() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.double get shortTermFuelTrim => $_getN(1);
  @$pb.TagNumber(2)
  set shortTermFuelTrim($core.double value) => $_setFloat(1, value);
  @$pb.TagNumber(2)
  $core.bool hasShortTermFuelTrim() => $_has(1);
  @$pb.TagNumber(2)
  void clearShortTermFuelTrim() => $_clearField(2);
}

class OBD2Data extends $pb.GeneratedMessage {
  factory OBD2Data({
    $core.bool? isReady,
    OBDStandard? obdStandard,
    $core.double? engineOilTemperature,
    $core.double? coolantTemperature,
    $core.double? engineRPM,
    $core.double? vehicleSpeed,
    $core.double? timingAdvance,
    $core.double? intakeAirTemperature,
    $core.double? throttlePosition,
    $core.double? relativeThrottlePosition,
    OxygenSensor? oxygenSensor1,
    OxygenSensor? oxygenSensor2,
    OxygenSensor? oxygenSensor3,
    OxygenSensor? oxygenSensor4,
    OxygenSensor? oxygenSensor5,
    OxygenSensor? oxygenSensor6,
    OxygenSensor? oxygenSensor7,
    OxygenSensor? oxygenSensor8,
    $core.double? engineRuntime,
    $core.double? fuelLevel,
    $core.double? evapVaporPressure,
    $core.double? absBarometricPressure,
    $core.double? catalystTemp11,
    $core.double? catalystTemp21,
    $core.double? catalystTemp12,
    $core.double? catalystTemp22,
    $core.double? controlModuleVoltage,
    $core.double? absoluteLoad,
    $core.double? ambientAirTemperature,
    $core.int? fuelType,
    $core.double? ethanolFuelPercentage,
    $core.String? vin,
    $core.String? errorCodes,
    $core.String? ecuName,
  }) {
    final result = create();
    if (isReady != null) result.isReady = isReady;
    if (obdStandard != null) result.obdStandard = obdStandard;
    if (engineOilTemperature != null)
      result.engineOilTemperature = engineOilTemperature;
    if (coolantTemperature != null)
      result.coolantTemperature = coolantTemperature;
    if (engineRPM != null) result.engineRPM = engineRPM;
    if (vehicleSpeed != null) result.vehicleSpeed = vehicleSpeed;
    if (timingAdvance != null) result.timingAdvance = timingAdvance;
    if (intakeAirTemperature != null)
      result.intakeAirTemperature = intakeAirTemperature;
    if (throttlePosition != null) result.throttlePosition = throttlePosition;
    if (relativeThrottlePosition != null)
      result.relativeThrottlePosition = relativeThrottlePosition;
    if (oxygenSensor1 != null) result.oxygenSensor1 = oxygenSensor1;
    if (oxygenSensor2 != null) result.oxygenSensor2 = oxygenSensor2;
    if (oxygenSensor3 != null) result.oxygenSensor3 = oxygenSensor3;
    if (oxygenSensor4 != null) result.oxygenSensor4 = oxygenSensor4;
    if (oxygenSensor5 != null) result.oxygenSensor5 = oxygenSensor5;
    if (oxygenSensor6 != null) result.oxygenSensor6 = oxygenSensor6;
    if (oxygenSensor7 != null) result.oxygenSensor7 = oxygenSensor7;
    if (oxygenSensor8 != null) result.oxygenSensor8 = oxygenSensor8;
    if (engineRuntime != null) result.engineRuntime = engineRuntime;
    if (fuelLevel != null) result.fuelLevel = fuelLevel;
    if (evapVaporPressure != null) result.evapVaporPressure = evapVaporPressure;
    if (absBarometricPressure != null)
      result.absBarometricPressure = absBarometricPressure;
    if (catalystTemp11 != null) result.catalystTemp11 = catalystTemp11;
    if (catalystTemp21 != null) result.catalystTemp21 = catalystTemp21;
    if (catalystTemp12 != null) result.catalystTemp12 = catalystTemp12;
    if (catalystTemp22 != null) result.catalystTemp22 = catalystTemp22;
    if (controlModuleVoltage != null)
      result.controlModuleVoltage = controlModuleVoltage;
    if (absoluteLoad != null) result.absoluteLoad = absoluteLoad;
    if (ambientAirTemperature != null)
      result.ambientAirTemperature = ambientAirTemperature;
    if (fuelType != null) result.fuelType = fuelType;
    if (ethanolFuelPercentage != null)
      result.ethanolFuelPercentage = ethanolFuelPercentage;
    if (vin != null) result.vin = vin;
    if (errorCodes != null) result.errorCodes = errorCodes;
    if (ecuName != null) result.ecuName = ecuName;
    return result;
  }

  OBD2Data._();

  factory OBD2Data.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory OBD2Data.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'OBD2Data',
      createEmptyInstance: create)
    ..aOB(1, _omitFieldNames ? '' : 'isReady', protoName: 'isReady')
    ..e<OBDStandard>(
        2, _omitFieldNames ? '' : 'obdStandard', $pb.PbFieldType.OE,
        protoName: 'obdStandard',
        defaultOrMaker: OBDStandard.OBD_STANDARD_UNDEFINED,
        valueOf: OBDStandard.valueOf,
        enumValues: OBDStandard.values)
    ..a<$core.double>(
        3, _omitFieldNames ? '' : 'engineOilTemperature', $pb.PbFieldType.OF,
        protoName: 'engineOilTemperature')
    ..a<$core.double>(
        4, _omitFieldNames ? '' : 'coolantTemperature', $pb.PbFieldType.OF,
        protoName: 'coolantTemperature')
    ..a<$core.double>(5, _omitFieldNames ? '' : 'engineRPM', $pb.PbFieldType.OF,
        protoName: 'engineRPM')
    ..a<$core.double>(
        6, _omitFieldNames ? '' : 'vehicleSpeed', $pb.PbFieldType.OF,
        protoName: 'vehicleSpeed')
    ..a<$core.double>(
        7, _omitFieldNames ? '' : 'timingAdvance', $pb.PbFieldType.OF,
        protoName: 'timingAdvance')
    ..a<$core.double>(
        8, _omitFieldNames ? '' : 'intakeAirTemperature', $pb.PbFieldType.OF,
        protoName: 'intakeAirTemperature')
    ..a<$core.double>(
        9, _omitFieldNames ? '' : 'throttlePosition', $pb.PbFieldType.OF,
        protoName: 'throttlePosition')
    ..a<$core.double>(10, _omitFieldNames ? '' : 'relativeThrottlePosition',
        $pb.PbFieldType.OF,
        protoName: 'relativeThrottlePosition')
    ..aOM<OxygenSensor>(11, _omitFieldNames ? '' : 'oxygenSensor1',
        protoName: 'oxygenSensor1', subBuilder: OxygenSensor.create)
    ..aOM<OxygenSensor>(12, _omitFieldNames ? '' : 'oxygenSensor2',
        protoName: 'oxygenSensor2', subBuilder: OxygenSensor.create)
    ..aOM<OxygenSensor>(13, _omitFieldNames ? '' : 'oxygenSensor3',
        protoName: 'oxygenSensor3', subBuilder: OxygenSensor.create)
    ..aOM<OxygenSensor>(14, _omitFieldNames ? '' : 'oxygenSensor4',
        protoName: 'oxygenSensor4', subBuilder: OxygenSensor.create)
    ..aOM<OxygenSensor>(15, _omitFieldNames ? '' : 'oxygenSensor5',
        protoName: 'oxygenSensor5', subBuilder: OxygenSensor.create)
    ..aOM<OxygenSensor>(16, _omitFieldNames ? '' : 'oxygenSensor6',
        protoName: 'oxygenSensor6', subBuilder: OxygenSensor.create)
    ..aOM<OxygenSensor>(17, _omitFieldNames ? '' : 'oxygenSensor7',
        protoName: 'oxygenSensor7', subBuilder: OxygenSensor.create)
    ..aOM<OxygenSensor>(18, _omitFieldNames ? '' : 'oxygenSensor8',
        protoName: 'oxygenSensor8', subBuilder: OxygenSensor.create)
    ..a<$core.double>(
        19, _omitFieldNames ? '' : 'engineRuntime', $pb.PbFieldType.OF,
        protoName: 'engineRuntime')
    ..a<$core.double>(
        20, _omitFieldNames ? '' : 'fuelLevel', $pb.PbFieldType.OF,
        protoName: 'fuelLevel')
    ..a<$core.double>(
        21, _omitFieldNames ? '' : 'evapVaporPressure', $pb.PbFieldType.OF,
        protoName: 'evapVaporPressure')
    ..a<$core.double>(
        22, _omitFieldNames ? '' : 'absBarometricPressure', $pb.PbFieldType.OF,
        protoName: 'absBarometricPressure')
    ..a<$core.double>(
        23, _omitFieldNames ? '' : 'catalystTemp11', $pb.PbFieldType.OF,
        protoName: 'catalystTemp11')
    ..a<$core.double>(
        24, _omitFieldNames ? '' : 'catalystTemp21', $pb.PbFieldType.OF,
        protoName: 'catalystTemp21')
    ..a<$core.double>(
        25, _omitFieldNames ? '' : 'catalystTemp12', $pb.PbFieldType.OF,
        protoName: 'catalystTemp12')
    ..a<$core.double>(
        26, _omitFieldNames ? '' : 'catalystTemp22', $pb.PbFieldType.OF,
        protoName: 'catalystTemp22')
    ..a<$core.double>(
        27, _omitFieldNames ? '' : 'controlModuleVoltage', $pb.PbFieldType.OF,
        protoName: 'controlModuleVoltage')
    ..a<$core.double>(
        28, _omitFieldNames ? '' : 'absoluteLoad', $pb.PbFieldType.OF,
        protoName: 'absoluteLoad')
    ..a<$core.double>(
        29, _omitFieldNames ? '' : 'ambientAirTemperature', $pb.PbFieldType.OF,
        protoName: 'ambientAirTemperature')
    ..a<$core.int>(30, _omitFieldNames ? '' : 'fuelType', $pb.PbFieldType.O3,
        protoName: 'fuelType')
    ..a<$core.double>(
        31, _omitFieldNames ? '' : 'ethanolFuelPercentage', $pb.PbFieldType.OF,
        protoName: 'ethanolFuelPercentage')
    ..aOS(32, _omitFieldNames ? '' : 'vin')
    ..aOS(33, _omitFieldNames ? '' : 'errorCodes', protoName: 'errorCodes')
    ..aOS(34, _omitFieldNames ? '' : 'ecuName', protoName: 'ecuName')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  OBD2Data clone() => OBD2Data()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  OBD2Data copyWith(void Function(OBD2Data) updates) =>
      super.copyWith((message) => updates(message as OBD2Data)) as OBD2Data;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static OBD2Data create() => OBD2Data._();
  @$core.override
  OBD2Data createEmptyInstance() => create();
  static $pb.PbList<OBD2Data> createRepeated() => $pb.PbList<OBD2Data>();
  @$core.pragma('dart2js:noInline')
  static OBD2Data getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<OBD2Data>(create);
  static OBD2Data? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get isReady => $_getBF(0);
  @$pb.TagNumber(1)
  set isReady($core.bool value) => $_setBool(0, value);
  @$pb.TagNumber(1)
  $core.bool hasIsReady() => $_has(0);
  @$pb.TagNumber(1)
  void clearIsReady() => $_clearField(1);

  @$pb.TagNumber(2)
  OBDStandard get obdStandard => $_getN(1);
  @$pb.TagNumber(2)
  set obdStandard(OBDStandard value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasObdStandard() => $_has(1);
  @$pb.TagNumber(2)
  void clearObdStandard() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.double get engineOilTemperature => $_getN(2);
  @$pb.TagNumber(3)
  set engineOilTemperature($core.double value) => $_setFloat(2, value);
  @$pb.TagNumber(3)
  $core.bool hasEngineOilTemperature() => $_has(2);
  @$pb.TagNumber(3)
  void clearEngineOilTemperature() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.double get coolantTemperature => $_getN(3);
  @$pb.TagNumber(4)
  set coolantTemperature($core.double value) => $_setFloat(3, value);
  @$pb.TagNumber(4)
  $core.bool hasCoolantTemperature() => $_has(3);
  @$pb.TagNumber(4)
  void clearCoolantTemperature() => $_clearField(4);

  @$pb.TagNumber(5)
  $core.double get engineRPM => $_getN(4);
  @$pb.TagNumber(5)
  set engineRPM($core.double value) => $_setFloat(4, value);
  @$pb.TagNumber(5)
  $core.bool hasEngineRPM() => $_has(4);
  @$pb.TagNumber(5)
  void clearEngineRPM() => $_clearField(5);

  @$pb.TagNumber(6)
  $core.double get vehicleSpeed => $_getN(5);
  @$pb.TagNumber(6)
  set vehicleSpeed($core.double value) => $_setFloat(5, value);
  @$pb.TagNumber(6)
  $core.bool hasVehicleSpeed() => $_has(5);
  @$pb.TagNumber(6)
  void clearVehicleSpeed() => $_clearField(6);

  @$pb.TagNumber(7)
  $core.double get timingAdvance => $_getN(6);
  @$pb.TagNumber(7)
  set timingAdvance($core.double value) => $_setFloat(6, value);
  @$pb.TagNumber(7)
  $core.bool hasTimingAdvance() => $_has(6);
  @$pb.TagNumber(7)
  void clearTimingAdvance() => $_clearField(7);

  @$pb.TagNumber(8)
  $core.double get intakeAirTemperature => $_getN(7);
  @$pb.TagNumber(8)
  set intakeAirTemperature($core.double value) => $_setFloat(7, value);
  @$pb.TagNumber(8)
  $core.bool hasIntakeAirTemperature() => $_has(7);
  @$pb.TagNumber(8)
  void clearIntakeAirTemperature() => $_clearField(8);

  @$pb.TagNumber(9)
  $core.double get throttlePosition => $_getN(8);
  @$pb.TagNumber(9)
  set throttlePosition($core.double value) => $_setFloat(8, value);
  @$pb.TagNumber(9)
  $core.bool hasThrottlePosition() => $_has(8);
  @$pb.TagNumber(9)
  void clearThrottlePosition() => $_clearField(9);

  @$pb.TagNumber(10)
  $core.double get relativeThrottlePosition => $_getN(9);
  @$pb.TagNumber(10)
  set relativeThrottlePosition($core.double value) => $_setFloat(9, value);
  @$pb.TagNumber(10)
  $core.bool hasRelativeThrottlePosition() => $_has(9);
  @$pb.TagNumber(10)
  void clearRelativeThrottlePosition() => $_clearField(10);

  @$pb.TagNumber(11)
  OxygenSensor get oxygenSensor1 => $_getN(10);
  @$pb.TagNumber(11)
  set oxygenSensor1(OxygenSensor value) => $_setField(11, value);
  @$pb.TagNumber(11)
  $core.bool hasOxygenSensor1() => $_has(10);
  @$pb.TagNumber(11)
  void clearOxygenSensor1() => $_clearField(11);
  @$pb.TagNumber(11)
  OxygenSensor ensureOxygenSensor1() => $_ensure(10);

  @$pb.TagNumber(12)
  OxygenSensor get oxygenSensor2 => $_getN(11);
  @$pb.TagNumber(12)
  set oxygenSensor2(OxygenSensor value) => $_setField(12, value);
  @$pb.TagNumber(12)
  $core.bool hasOxygenSensor2() => $_has(11);
  @$pb.TagNumber(12)
  void clearOxygenSensor2() => $_clearField(12);
  @$pb.TagNumber(12)
  OxygenSensor ensureOxygenSensor2() => $_ensure(11);

  @$pb.TagNumber(13)
  OxygenSensor get oxygenSensor3 => $_getN(12);
  @$pb.TagNumber(13)
  set oxygenSensor3(OxygenSensor value) => $_setField(13, value);
  @$pb.TagNumber(13)
  $core.bool hasOxygenSensor3() => $_has(12);
  @$pb.TagNumber(13)
  void clearOxygenSensor3() => $_clearField(13);
  @$pb.TagNumber(13)
  OxygenSensor ensureOxygenSensor3() => $_ensure(12);

  @$pb.TagNumber(14)
  OxygenSensor get oxygenSensor4 => $_getN(13);
  @$pb.TagNumber(14)
  set oxygenSensor4(OxygenSensor value) => $_setField(14, value);
  @$pb.TagNumber(14)
  $core.bool hasOxygenSensor4() => $_has(13);
  @$pb.TagNumber(14)
  void clearOxygenSensor4() => $_clearField(14);
  @$pb.TagNumber(14)
  OxygenSensor ensureOxygenSensor4() => $_ensure(13);

  @$pb.TagNumber(15)
  OxygenSensor get oxygenSensor5 => $_getN(14);
  @$pb.TagNumber(15)
  set oxygenSensor5(OxygenSensor value) => $_setField(15, value);
  @$pb.TagNumber(15)
  $core.bool hasOxygenSensor5() => $_has(14);
  @$pb.TagNumber(15)
  void clearOxygenSensor5() => $_clearField(15);
  @$pb.TagNumber(15)
  OxygenSensor ensureOxygenSensor5() => $_ensure(14);

  @$pb.TagNumber(16)
  OxygenSensor get oxygenSensor6 => $_getN(15);
  @$pb.TagNumber(16)
  set oxygenSensor6(OxygenSensor value) => $_setField(16, value);
  @$pb.TagNumber(16)
  $core.bool hasOxygenSensor6() => $_has(15);
  @$pb.TagNumber(16)
  void clearOxygenSensor6() => $_clearField(16);
  @$pb.TagNumber(16)
  OxygenSensor ensureOxygenSensor6() => $_ensure(15);

  @$pb.TagNumber(17)
  OxygenSensor get oxygenSensor7 => $_getN(16);
  @$pb.TagNumber(17)
  set oxygenSensor7(OxygenSensor value) => $_setField(17, value);
  @$pb.TagNumber(17)
  $core.bool hasOxygenSensor7() => $_has(16);
  @$pb.TagNumber(17)
  void clearOxygenSensor7() => $_clearField(17);
  @$pb.TagNumber(17)
  OxygenSensor ensureOxygenSensor7() => $_ensure(16);

  @$pb.TagNumber(18)
  OxygenSensor get oxygenSensor8 => $_getN(17);
  @$pb.TagNumber(18)
  set oxygenSensor8(OxygenSensor value) => $_setField(18, value);
  @$pb.TagNumber(18)
  $core.bool hasOxygenSensor8() => $_has(17);
  @$pb.TagNumber(18)
  void clearOxygenSensor8() => $_clearField(18);
  @$pb.TagNumber(18)
  OxygenSensor ensureOxygenSensor8() => $_ensure(17);

  @$pb.TagNumber(19)
  $core.double get engineRuntime => $_getN(18);
  @$pb.TagNumber(19)
  set engineRuntime($core.double value) => $_setFloat(18, value);
  @$pb.TagNumber(19)
  $core.bool hasEngineRuntime() => $_has(18);
  @$pb.TagNumber(19)
  void clearEngineRuntime() => $_clearField(19);

  @$pb.TagNumber(20)
  $core.double get fuelLevel => $_getN(19);
  @$pb.TagNumber(20)
  set fuelLevel($core.double value) => $_setFloat(19, value);
  @$pb.TagNumber(20)
  $core.bool hasFuelLevel() => $_has(19);
  @$pb.TagNumber(20)
  void clearFuelLevel() => $_clearField(20);

  @$pb.TagNumber(21)
  $core.double get evapVaporPressure => $_getN(20);
  @$pb.TagNumber(21)
  set evapVaporPressure($core.double value) => $_setFloat(20, value);
  @$pb.TagNumber(21)
  $core.bool hasEvapVaporPressure() => $_has(20);
  @$pb.TagNumber(21)
  void clearEvapVaporPressure() => $_clearField(21);

  @$pb.TagNumber(22)
  $core.double get absBarometricPressure => $_getN(21);
  @$pb.TagNumber(22)
  set absBarometricPressure($core.double value) => $_setFloat(21, value);
  @$pb.TagNumber(22)
  $core.bool hasAbsBarometricPressure() => $_has(21);
  @$pb.TagNumber(22)
  void clearAbsBarometricPressure() => $_clearField(22);

  @$pb.TagNumber(23)
  $core.double get catalystTemp11 => $_getN(22);
  @$pb.TagNumber(23)
  set catalystTemp11($core.double value) => $_setFloat(22, value);
  @$pb.TagNumber(23)
  $core.bool hasCatalystTemp11() => $_has(22);
  @$pb.TagNumber(23)
  void clearCatalystTemp11() => $_clearField(23);

  @$pb.TagNumber(24)
  $core.double get catalystTemp21 => $_getN(23);
  @$pb.TagNumber(24)
  set catalystTemp21($core.double value) => $_setFloat(23, value);
  @$pb.TagNumber(24)
  $core.bool hasCatalystTemp21() => $_has(23);
  @$pb.TagNumber(24)
  void clearCatalystTemp21() => $_clearField(24);

  @$pb.TagNumber(25)
  $core.double get catalystTemp12 => $_getN(24);
  @$pb.TagNumber(25)
  set catalystTemp12($core.double value) => $_setFloat(24, value);
  @$pb.TagNumber(25)
  $core.bool hasCatalystTemp12() => $_has(24);
  @$pb.TagNumber(25)
  void clearCatalystTemp12() => $_clearField(25);

  @$pb.TagNumber(26)
  $core.double get catalystTemp22 => $_getN(25);
  @$pb.TagNumber(26)
  set catalystTemp22($core.double value) => $_setFloat(25, value);
  @$pb.TagNumber(26)
  $core.bool hasCatalystTemp22() => $_has(25);
  @$pb.TagNumber(26)
  void clearCatalystTemp22() => $_clearField(26);

  @$pb.TagNumber(27)
  $core.double get controlModuleVoltage => $_getN(26);
  @$pb.TagNumber(27)
  set controlModuleVoltage($core.double value) => $_setFloat(26, value);
  @$pb.TagNumber(27)
  $core.bool hasControlModuleVoltage() => $_has(26);
  @$pb.TagNumber(27)
  void clearControlModuleVoltage() => $_clearField(27);

  @$pb.TagNumber(28)
  $core.double get absoluteLoad => $_getN(27);
  @$pb.TagNumber(28)
  set absoluteLoad($core.double value) => $_setFloat(27, value);
  @$pb.TagNumber(28)
  $core.bool hasAbsoluteLoad() => $_has(27);
  @$pb.TagNumber(28)
  void clearAbsoluteLoad() => $_clearField(28);

  @$pb.TagNumber(29)
  $core.double get ambientAirTemperature => $_getN(28);
  @$pb.TagNumber(29)
  set ambientAirTemperature($core.double value) => $_setFloat(28, value);
  @$pb.TagNumber(29)
  $core.bool hasAmbientAirTemperature() => $_has(28);
  @$pb.TagNumber(29)
  void clearAmbientAirTemperature() => $_clearField(29);

  @$pb.TagNumber(30)
  $core.int get fuelType => $_getIZ(29);
  @$pb.TagNumber(30)
  set fuelType($core.int value) => $_setSignedInt32(29, value);
  @$pb.TagNumber(30)
  $core.bool hasFuelType() => $_has(29);
  @$pb.TagNumber(30)
  void clearFuelType() => $_clearField(30);

  @$pb.TagNumber(31)
  $core.double get ethanolFuelPercentage => $_getN(30);
  @$pb.TagNumber(31)
  set ethanolFuelPercentage($core.double value) => $_setFloat(30, value);
  @$pb.TagNumber(31)
  $core.bool hasEthanolFuelPercentage() => $_has(30);
  @$pb.TagNumber(31)
  void clearEthanolFuelPercentage() => $_clearField(31);

  @$pb.TagNumber(32)
  $core.String get vin => $_getSZ(31);
  @$pb.TagNumber(32)
  set vin($core.String value) => $_setString(31, value);
  @$pb.TagNumber(32)
  $core.bool hasVin() => $_has(31);
  @$pb.TagNumber(32)
  void clearVin() => $_clearField(32);

  @$pb.TagNumber(33)
  $core.String get errorCodes => $_getSZ(32);
  @$pb.TagNumber(33)
  set errorCodes($core.String value) => $_setString(32, value);
  @$pb.TagNumber(33)
  $core.bool hasErrorCodes() => $_has(32);
  @$pb.TagNumber(33)
  void clearErrorCodes() => $_clearField(33);

  @$pb.TagNumber(34)
  $core.String get ecuName => $_getSZ(33);
  @$pb.TagNumber(34)
  set ecuName($core.String value) => $_setString(33, value);
  @$pb.TagNumber(34)
  $core.bool hasEcuName() => $_has(33);
  @$pb.TagNumber(34)
  void clearEcuName() => $_clearField(34);
}

class OBD2Command extends $pb.GeneratedMessage {
  factory OBD2Command({
    $core.bool? clearErrorCodes,
  }) {
    final result = create();
    if (clearErrorCodes != null) result.clearErrorCodes = clearErrorCodes;
    return result;
  }

  OBD2Command._();

  factory OBD2Command.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory OBD2Command.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'OBD2Command',
      createEmptyInstance: create)
    ..aOB(1, _omitFieldNames ? '' : 'clearErrorCodes',
        protoName: 'clearErrorCodes')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  OBD2Command clone() => OBD2Command()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  OBD2Command copyWith(void Function(OBD2Command) updates) =>
      super.copyWith((message) => updates(message as OBD2Command))
          as OBD2Command;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static OBD2Command create() => OBD2Command._();
  @$core.override
  OBD2Command createEmptyInstance() => create();
  static $pb.PbList<OBD2Command> createRepeated() => $pb.PbList<OBD2Command>();
  @$core.pragma('dart2js:noInline')
  static OBD2Command getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<OBD2Command>(create);
  static OBD2Command? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get clearErrorCodes => $_getBF(0);
  @$pb.TagNumber(1)
  set clearErrorCodes($core.bool value) => $_setBool(0, value);
  @$pb.TagNumber(1)
  $core.bool hasClearErrorCodes() => $_has(0);
  @$pb.TagNumber(1)
  void clearClearErrorCodes() => $_clearField(1);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
