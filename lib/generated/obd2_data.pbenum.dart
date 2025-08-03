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

class OBDStandard extends $pb.ProtobufEnum {
  static const OBDStandard OBD_STANDARD_UNDEFINED =
      OBDStandard._(0, _omitEnumNames ? '' : 'OBD_STANDARD_UNDEFINED');
  static const OBDStandard OBD2_STANDARD_CARB =
      OBDStandard._(1, _omitEnumNames ? '' : 'OBD2_STANDARD_CARB');
  static const OBDStandard OBD2_STANDARD_EPA =
      OBDStandard._(2, _omitEnumNames ? '' : 'OBD2_STANDARD_EPA');
  static const OBDStandard OBD_AND_OBD2 =
      OBDStandard._(3, _omitEnumNames ? '' : 'OBD_AND_OBD2');
  static const OBDStandard OBD_1 =
      OBDStandard._(4, _omitEnumNames ? '' : 'OBD_1');
  static const OBDStandard NOT_OBD_COMPLIANT =
      OBDStandard._(5, _omitEnumNames ? '' : 'NOT_OBD_COMPLIANT');
  static const OBDStandard EOBD =
      OBDStandard._(6, _omitEnumNames ? '' : 'EOBD');
  static const OBDStandard EOBD_AND_OBD2 =
      OBDStandard._(7, _omitEnumNames ? '' : 'EOBD_AND_OBD2');
  static const OBDStandard EOBD_AND_OBD =
      OBDStandard._(8, _omitEnumNames ? '' : 'EOBD_AND_OBD');
  static const OBDStandard EOBD_OBD_OBD2 =
      OBDStandard._(9, _omitEnumNames ? '' : 'EOBD_OBD_OBD2');
  static const OBDStandard JOBD =
      OBDStandard._(10, _omitEnumNames ? '' : 'JOBD');
  static const OBDStandard JOBD_AND_OBD2 =
      OBDStandard._(11, _omitEnumNames ? '' : 'JOBD_AND_OBD2');
  static const OBDStandard JOBD_AND_EOBD =
      OBDStandard._(12, _omitEnumNames ? '' : 'JOBD_AND_EOBD');
  static const OBDStandard JOBD_EOBD_OBD2 =
      OBDStandard._(13, _omitEnumNames ? '' : 'JOBD_EOBD_OBD2');
  static const OBDStandard EMD = OBDStandard._(17, _omitEnumNames ? '' : 'EMD');
  static const OBDStandard EMD_ENHANCED =
      OBDStandard._(18, _omitEnumNames ? '' : 'EMD_ENHANCED');
  static const OBDStandard HEAVY_DUTY_OBD =
      OBDStandard._(19, _omitEnumNames ? '' : 'HEAVY_DUTY_OBD');

  static const $core.List<OBDStandard> values = <OBDStandard>[
    OBD_STANDARD_UNDEFINED,
    OBD2_STANDARD_CARB,
    OBD2_STANDARD_EPA,
    OBD_AND_OBD2,
    OBD_1,
    NOT_OBD_COMPLIANT,
    EOBD,
    EOBD_AND_OBD2,
    EOBD_AND_OBD,
    EOBD_OBD_OBD2,
    JOBD,
    JOBD_AND_OBD2,
    JOBD_AND_EOBD,
    JOBD_EOBD_OBD2,
    EMD,
    EMD_ENHANCED,
    HEAVY_DUTY_OBD,
  ];

  static final $core.List<OBDStandard?> _byValue =
      $pb.ProtobufEnum.$_initByValueList(values, 19);
  static OBDStandard? valueOf($core.int value) =>
      value < 0 || value >= _byValue.length ? null : _byValue[value];

  const OBDStandard._(super.value, super.name);
}

const $core.bool _omitEnumNames =
    $core.bool.fromEnvironment('protobuf.omit_enum_names');
