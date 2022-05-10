import 'package:arriva_dart/src/dtos/departure_stations_response.dto.dart';
import 'package:arriva_dart/src/dtos/departures_response.dto.dart';
import 'package:arriva_dart/src/dtos/stations_response.dto.dart';
import 'package:arriva_dart/src/utils/json_serializable_converter.dart';

const Map<Type, JsonFactory> factories = {
  DepartureStationsResponse: DepartureStationsResponse.fromJson,
  DeparturesResponse: DeparturesResponse.fromJson,
  StationsResponse: StationsResponse.fromJson,
};

void main() async {}
