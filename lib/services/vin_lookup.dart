import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:obd2_dashboard/services/logger.dart';

class CarManufacturerData {
  final String? make;
  final String? model;
  final String? modelYear;

  CarManufacturerData({this.make, this.model, this.modelYear});
}

Future<CarManufacturerData?> lookupManufacturerFromVIN(String vin) async {
  final String url =
      'https://vpic.nhtsa.dot.gov/api/vehicles/decodevin/$vin?format=json';

  try {
    final response = await http.get(Uri.parse(url));

    if (response.statusCode == 200) {
      final jsonData = jsonDecode(response.body);

      String? make;
      String? model;
      String? modelYear;

      for (var result in jsonData['Results']) {
        if (result['Variable'] == 'Make') {
          make = result['Value'];
        } else if (result['Variable'] == 'Model') {
          model = result['Value'];
        } else if (result['Variable'] == 'Model Year') {
          modelYear = result['Value'];
        }
      }

      return CarManufacturerData(
        make: make,
        model: model,
        modelYear: modelYear,
      );
    }
  } catch (e) {
    logger.error('Failed to fetch details from $url', e);
  }

  return null;
}
