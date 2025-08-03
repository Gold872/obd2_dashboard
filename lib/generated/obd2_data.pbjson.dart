// This is a generated file - do not edit.
//
// Generated from obd2_data.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use oBDStandardDescriptor instead')
const OBDStandard$json = {
  '1': 'OBDStandard',
  '2': [
    {'1': 'OBD_STANDARD_UNDEFINED', '2': 0},
    {'1': 'OBD2_STANDARD_CARB', '2': 1},
    {'1': 'OBD2_STANDARD_EPA', '2': 2},
    {'1': 'OBD_AND_OBD2', '2': 3},
    {'1': 'OBD_1', '2': 4},
    {'1': 'NOT_OBD_COMPLIANT', '2': 5},
    {'1': 'EOBD', '2': 6},
    {'1': 'EOBD_AND_OBD2', '2': 7},
    {'1': 'EOBD_AND_OBD', '2': 8},
    {'1': 'EOBD_OBD_OBD2', '2': 9},
    {'1': 'JOBD', '2': 10},
    {'1': 'JOBD_AND_OBD2', '2': 11},
    {'1': 'JOBD_AND_EOBD', '2': 12},
    {'1': 'JOBD_EOBD_OBD2', '2': 13},
    {'1': 'EMD', '2': 17},
    {'1': 'EMD_ENHANCED', '2': 18},
    {'1': 'HEAVY_DUTY_OBD', '2': 19},
  ],
};

/// Descriptor for `OBDStandard`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List oBDStandardDescriptor = $convert.base64Decode(
    'CgtPQkRTdGFuZGFyZBIaChZPQkRfU1RBTkRBUkRfVU5ERUZJTkVEEAASFgoST0JEMl9TVEFORE'
    'FSRF9DQVJCEAESFQoRT0JEMl9TVEFOREFSRF9FUEEQAhIQCgxPQkRfQU5EX09CRDIQAxIJCgVP'
    'QkRfMRAEEhUKEU5PVF9PQkRfQ09NUExJQU5UEAUSCAoERU9CRBAGEhEKDUVPQkRfQU5EX09CRD'
    'IQBxIQCgxFT0JEX0FORF9PQkQQCBIRCg1FT0JEX09CRF9PQkQyEAkSCAoESk9CRBAKEhEKDUpP'
    'QkRfQU5EX09CRDIQCxIRCg1KT0JEX0FORF9FT0JEEAwSEgoOSk9CRF9FT0JEX09CRDIQDRIHCg'
    'NFTUQQERIQCgxFTURfRU5IQU5DRUQQEhISCg5IRUFWWV9EVVRZX09CRBAT');

@$core.Deprecated('Use oxygenSensorDescriptor instead')
const OxygenSensor$json = {
  '1': 'OxygenSensor',
  '2': [
    {'1': 'voltage', '3': 1, '4': 1, '5': 2, '10': 'voltage'},
    {
      '1': 'shortTermFuelTrim',
      '3': 2,
      '4': 1,
      '5': 2,
      '10': 'shortTermFuelTrim'
    },
  ],
};

/// Descriptor for `OxygenSensor`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List oxygenSensorDescriptor = $convert.base64Decode(
    'CgxPeHlnZW5TZW5zb3ISGAoHdm9sdGFnZRgBIAEoAlIHdm9sdGFnZRIsChFzaG9ydFRlcm1GdW'
    'VsVHJpbRgCIAEoAlIRc2hvcnRUZXJtRnVlbFRyaW0=');

@$core.Deprecated('Use oBD2DataDescriptor instead')
const OBD2Data$json = {
  '1': 'OBD2Data',
  '2': [
    {'1': 'isReady', '3': 1, '4': 1, '5': 8, '10': 'isReady'},
    {
      '1': 'obdStandard',
      '3': 2,
      '4': 1,
      '5': 14,
      '6': '.OBDStandard',
      '9': 0,
      '10': 'obdStandard',
      '17': true
    },
    {
      '1': 'engineOilTemperature',
      '3': 3,
      '4': 1,
      '5': 2,
      '9': 1,
      '10': 'engineOilTemperature',
      '17': true
    },
    {
      '1': 'coolantTemperature',
      '3': 4,
      '4': 1,
      '5': 2,
      '9': 2,
      '10': 'coolantTemperature',
      '17': true
    },
    {
      '1': 'engineRPM',
      '3': 5,
      '4': 1,
      '5': 2,
      '9': 3,
      '10': 'engineRPM',
      '17': true
    },
    {
      '1': 'vehicleSpeed',
      '3': 6,
      '4': 1,
      '5': 2,
      '9': 4,
      '10': 'vehicleSpeed',
      '17': true
    },
    {
      '1': 'timingAdvance',
      '3': 7,
      '4': 1,
      '5': 2,
      '9': 5,
      '10': 'timingAdvance',
      '17': true
    },
    {
      '1': 'intakeAirTemperature',
      '3': 8,
      '4': 1,
      '5': 2,
      '9': 6,
      '10': 'intakeAirTemperature',
      '17': true
    },
    {
      '1': 'throttlePosition',
      '3': 9,
      '4': 1,
      '5': 2,
      '9': 7,
      '10': 'throttlePosition',
      '17': true
    },
    {
      '1': 'relativeThrottlePosition',
      '3': 10,
      '4': 1,
      '5': 2,
      '9': 8,
      '10': 'relativeThrottlePosition',
      '17': true
    },
    {
      '1': 'oxygenSensor1',
      '3': 11,
      '4': 1,
      '5': 11,
      '6': '.OxygenSensor',
      '9': 9,
      '10': 'oxygenSensor1',
      '17': true
    },
    {
      '1': 'oxygenSensor2',
      '3': 12,
      '4': 1,
      '5': 11,
      '6': '.OxygenSensor',
      '9': 10,
      '10': 'oxygenSensor2',
      '17': true
    },
    {
      '1': 'oxygenSensor3',
      '3': 13,
      '4': 1,
      '5': 11,
      '6': '.OxygenSensor',
      '9': 11,
      '10': 'oxygenSensor3',
      '17': true
    },
    {
      '1': 'oxygenSensor4',
      '3': 14,
      '4': 1,
      '5': 11,
      '6': '.OxygenSensor',
      '9': 12,
      '10': 'oxygenSensor4',
      '17': true
    },
    {
      '1': 'oxygenSensor5',
      '3': 15,
      '4': 1,
      '5': 11,
      '6': '.OxygenSensor',
      '9': 13,
      '10': 'oxygenSensor5',
      '17': true
    },
    {
      '1': 'oxygenSensor6',
      '3': 16,
      '4': 1,
      '5': 11,
      '6': '.OxygenSensor',
      '9': 14,
      '10': 'oxygenSensor6',
      '17': true
    },
    {
      '1': 'oxygenSensor7',
      '3': 17,
      '4': 1,
      '5': 11,
      '6': '.OxygenSensor',
      '9': 15,
      '10': 'oxygenSensor7',
      '17': true
    },
    {
      '1': 'oxygenSensor8',
      '3': 18,
      '4': 1,
      '5': 11,
      '6': '.OxygenSensor',
      '9': 16,
      '10': 'oxygenSensor8',
      '17': true
    },
    {
      '1': 'engineRuntime',
      '3': 19,
      '4': 1,
      '5': 2,
      '9': 17,
      '10': 'engineRuntime',
      '17': true
    },
    {
      '1': 'fuelLevel',
      '3': 20,
      '4': 1,
      '5': 2,
      '9': 18,
      '10': 'fuelLevel',
      '17': true
    },
    {
      '1': 'evapVaporPressure',
      '3': 21,
      '4': 1,
      '5': 2,
      '9': 19,
      '10': 'evapVaporPressure',
      '17': true
    },
    {
      '1': 'absBarometricPressure',
      '3': 22,
      '4': 1,
      '5': 2,
      '9': 20,
      '10': 'absBarometricPressure',
      '17': true
    },
    {
      '1': 'catalystTemp11',
      '3': 23,
      '4': 1,
      '5': 2,
      '9': 21,
      '10': 'catalystTemp11',
      '17': true
    },
    {
      '1': 'catalystTemp21',
      '3': 24,
      '4': 1,
      '5': 2,
      '9': 22,
      '10': 'catalystTemp21',
      '17': true
    },
    {
      '1': 'catalystTemp12',
      '3': 25,
      '4': 1,
      '5': 2,
      '9': 23,
      '10': 'catalystTemp12',
      '17': true
    },
    {
      '1': 'catalystTemp22',
      '3': 26,
      '4': 1,
      '5': 2,
      '9': 24,
      '10': 'catalystTemp22',
      '17': true
    },
    {
      '1': 'controlModuleVoltage',
      '3': 27,
      '4': 1,
      '5': 2,
      '9': 25,
      '10': 'controlModuleVoltage',
      '17': true
    },
    {
      '1': 'absoluteLoad',
      '3': 28,
      '4': 1,
      '5': 2,
      '9': 26,
      '10': 'absoluteLoad',
      '17': true
    },
    {
      '1': 'ambientAirTemperature',
      '3': 29,
      '4': 1,
      '5': 2,
      '9': 27,
      '10': 'ambientAirTemperature',
      '17': true
    },
    {
      '1': 'fuelType',
      '3': 30,
      '4': 1,
      '5': 5,
      '9': 28,
      '10': 'fuelType',
      '17': true
    },
    {
      '1': 'ethanolFuelPercentage',
      '3': 31,
      '4': 1,
      '5': 2,
      '9': 29,
      '10': 'ethanolFuelPercentage',
      '17': true
    },
    {'1': 'vin', '3': 32, '4': 1, '5': 9, '9': 30, '10': 'vin', '17': true},
    {
      '1': 'errorCodes',
      '3': 33,
      '4': 1,
      '5': 9,
      '9': 31,
      '10': 'errorCodes',
      '17': true
    },
    {
      '1': 'ecuName',
      '3': 34,
      '4': 1,
      '5': 9,
      '9': 32,
      '10': 'ecuName',
      '17': true
    },
  ],
  '8': [
    {'1': '_obdStandard'},
    {'1': '_engineOilTemperature'},
    {'1': '_coolantTemperature'},
    {'1': '_engineRPM'},
    {'1': '_vehicleSpeed'},
    {'1': '_timingAdvance'},
    {'1': '_intakeAirTemperature'},
    {'1': '_throttlePosition'},
    {'1': '_relativeThrottlePosition'},
    {'1': '_oxygenSensor1'},
    {'1': '_oxygenSensor2'},
    {'1': '_oxygenSensor3'},
    {'1': '_oxygenSensor4'},
    {'1': '_oxygenSensor5'},
    {'1': '_oxygenSensor6'},
    {'1': '_oxygenSensor7'},
    {'1': '_oxygenSensor8'},
    {'1': '_engineRuntime'},
    {'1': '_fuelLevel'},
    {'1': '_evapVaporPressure'},
    {'1': '_absBarometricPressure'},
    {'1': '_catalystTemp11'},
    {'1': '_catalystTemp21'},
    {'1': '_catalystTemp12'},
    {'1': '_catalystTemp22'},
    {'1': '_controlModuleVoltage'},
    {'1': '_absoluteLoad'},
    {'1': '_ambientAirTemperature'},
    {'1': '_fuelType'},
    {'1': '_ethanolFuelPercentage'},
    {'1': '_vin'},
    {'1': '_errorCodes'},
    {'1': '_ecuName'},
  ],
};

/// Descriptor for `OBD2Data`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List oBD2DataDescriptor = $convert.base64Decode(
    'CghPQkQyRGF0YRIYCgdpc1JlYWR5GAEgASgIUgdpc1JlYWR5EjMKC29iZFN0YW5kYXJkGAIgAS'
    'gOMgwuT0JEU3RhbmRhcmRIAFILb2JkU3RhbmRhcmSIAQESNwoUZW5naW5lT2lsVGVtcGVyYXR1'
    'cmUYAyABKAJIAVIUZW5naW5lT2lsVGVtcGVyYXR1cmWIAQESMwoSY29vbGFudFRlbXBlcmF0dX'
    'JlGAQgASgCSAJSEmNvb2xhbnRUZW1wZXJhdHVyZYgBARIhCgllbmdpbmVSUE0YBSABKAJIA1IJ'
    'ZW5naW5lUlBNiAEBEicKDHZlaGljbGVTcGVlZBgGIAEoAkgEUgx2ZWhpY2xlU3BlZWSIAQESKQ'
    'oNdGltaW5nQWR2YW5jZRgHIAEoAkgFUg10aW1pbmdBZHZhbmNliAEBEjcKFGludGFrZUFpclRl'
    'bXBlcmF0dXJlGAggASgCSAZSFGludGFrZUFpclRlbXBlcmF0dXJliAEBEi8KEHRocm90dGxlUG'
    '9zaXRpb24YCSABKAJIB1IQdGhyb3R0bGVQb3NpdGlvbogBARI/ChhyZWxhdGl2ZVRocm90dGxl'
    'UG9zaXRpb24YCiABKAJICFIYcmVsYXRpdmVUaHJvdHRsZVBvc2l0aW9uiAEBEjgKDW94eWdlbl'
    'NlbnNvcjEYCyABKAsyDS5PeHlnZW5TZW5zb3JICVINb3h5Z2VuU2Vuc29yMYgBARI4Cg1veHln'
    'ZW5TZW5zb3IyGAwgASgLMg0uT3h5Z2VuU2Vuc29ySApSDW94eWdlblNlbnNvcjKIAQESOAoNb3'
    'h5Z2VuU2Vuc29yMxgNIAEoCzINLk94eWdlblNlbnNvckgLUg1veHlnZW5TZW5zb3IziAEBEjgK'
    'DW94eWdlblNlbnNvcjQYDiABKAsyDS5PeHlnZW5TZW5zb3JIDFINb3h5Z2VuU2Vuc29yNIgBAR'
    'I4Cg1veHlnZW5TZW5zb3I1GA8gASgLMg0uT3h5Z2VuU2Vuc29ySA1SDW94eWdlblNlbnNvcjWI'
    'AQESOAoNb3h5Z2VuU2Vuc29yNhgQIAEoCzINLk94eWdlblNlbnNvckgOUg1veHlnZW5TZW5zb3'
    'I2iAEBEjgKDW94eWdlblNlbnNvcjcYESABKAsyDS5PeHlnZW5TZW5zb3JID1INb3h5Z2VuU2Vu'
    'c29yN4gBARI4Cg1veHlnZW5TZW5zb3I4GBIgASgLMg0uT3h5Z2VuU2Vuc29ySBBSDW94eWdlbl'
    'NlbnNvcjiIAQESKQoNZW5naW5lUnVudGltZRgTIAEoAkgRUg1lbmdpbmVSdW50aW1liAEBEiEK'
    'CWZ1ZWxMZXZlbBgUIAEoAkgSUglmdWVsTGV2ZWyIAQESMQoRZXZhcFZhcG9yUHJlc3N1cmUYFS'
    'ABKAJIE1IRZXZhcFZhcG9yUHJlc3N1cmWIAQESOQoVYWJzQmFyb21ldHJpY1ByZXNzdXJlGBYg'
    'ASgCSBRSFWFic0Jhcm9tZXRyaWNQcmVzc3VyZYgBARIrCg5jYXRhbHlzdFRlbXAxMRgXIAEoAk'
    'gVUg5jYXRhbHlzdFRlbXAxMYgBARIrCg5jYXRhbHlzdFRlbXAyMRgYIAEoAkgWUg5jYXRhbHlz'
    'dFRlbXAyMYgBARIrCg5jYXRhbHlzdFRlbXAxMhgZIAEoAkgXUg5jYXRhbHlzdFRlbXAxMogBAR'
    'IrCg5jYXRhbHlzdFRlbXAyMhgaIAEoAkgYUg5jYXRhbHlzdFRlbXAyMogBARI3ChRjb250cm9s'
    'TW9kdWxlVm9sdGFnZRgbIAEoAkgZUhRjb250cm9sTW9kdWxlVm9sdGFnZYgBARInCgxhYnNvbH'
    'V0ZUxvYWQYHCABKAJIGlIMYWJzb2x1dGVMb2FkiAEBEjkKFWFtYmllbnRBaXJUZW1wZXJhdHVy'
    'ZRgdIAEoAkgbUhVhbWJpZW50QWlyVGVtcGVyYXR1cmWIAQESHwoIZnVlbFR5cGUYHiABKAVIHF'
    'IIZnVlbFR5cGWIAQESOQoVZXRoYW5vbEZ1ZWxQZXJjZW50YWdlGB8gASgCSB1SFWV0aGFub2xG'
    'dWVsUGVyY2VudGFnZYgBARIVCgN2aW4YICABKAlIHlIDdmluiAEBEiMKCmVycm9yQ29kZXMYIS'
    'ABKAlIH1IKZXJyb3JDb2Rlc4gBARIdCgdlY3VOYW1lGCIgASgJSCBSB2VjdU5hbWWIAQFCDgoM'
    'X29iZFN0YW5kYXJkQhcKFV9lbmdpbmVPaWxUZW1wZXJhdHVyZUIVChNfY29vbGFudFRlbXBlcm'
    'F0dXJlQgwKCl9lbmdpbmVSUE1CDwoNX3ZlaGljbGVTcGVlZEIQCg5fdGltaW5nQWR2YW5jZUIX'
    'ChVfaW50YWtlQWlyVGVtcGVyYXR1cmVCEwoRX3Rocm90dGxlUG9zaXRpb25CGwoZX3JlbGF0aX'
    'ZlVGhyb3R0bGVQb3NpdGlvbkIQCg5fb3h5Z2VuU2Vuc29yMUIQCg5fb3h5Z2VuU2Vuc29yMkIQ'
    'Cg5fb3h5Z2VuU2Vuc29yM0IQCg5fb3h5Z2VuU2Vuc29yNEIQCg5fb3h5Z2VuU2Vuc29yNUIQCg'
    '5fb3h5Z2VuU2Vuc29yNkIQCg5fb3h5Z2VuU2Vuc29yN0IQCg5fb3h5Z2VuU2Vuc29yOEIQCg5f'
    'ZW5naW5lUnVudGltZUIMCgpfZnVlbExldmVsQhQKEl9ldmFwVmFwb3JQcmVzc3VyZUIYChZfYW'
    'JzQmFyb21ldHJpY1ByZXNzdXJlQhEKD19jYXRhbHlzdFRlbXAxMUIRCg9fY2F0YWx5c3RUZW1w'
    'MjFCEQoPX2NhdGFseXN0VGVtcDEyQhEKD19jYXRhbHlzdFRlbXAyMkIXChVfY29udHJvbE1vZH'
    'VsZVZvbHRhZ2VCDwoNX2Fic29sdXRlTG9hZEIYChZfYW1iaWVudEFpclRlbXBlcmF0dXJlQgsK'
    'CV9mdWVsVHlwZUIYChZfZXRoYW5vbEZ1ZWxQZXJjZW50YWdlQgYKBF92aW5CDQoLX2Vycm9yQ2'
    '9kZXNCCgoIX2VjdU5hbWU=');

@$core.Deprecated('Use oBD2CommandDescriptor instead')
const OBD2Command$json = {
  '1': 'OBD2Command',
  '2': [
    {'1': 'clearErrorCodes', '3': 1, '4': 1, '5': 8, '10': 'clearErrorCodes'},
  ],
};

/// Descriptor for `OBD2Command`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List oBD2CommandDescriptor = $convert.base64Decode(
    'CgtPQkQyQ29tbWFuZBIoCg9jbGVhckVycm9yQ29kZXMYASABKAhSD2NsZWFyRXJyb3JDb2Rlcw'
    '==');
