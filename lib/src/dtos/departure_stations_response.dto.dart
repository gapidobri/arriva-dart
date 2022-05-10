import 'package:arriva_dart/src/models/departure_station.model.dart';
import 'package:json_annotation/json_annotation.dart';

import '../models/departure.model.dart';

part 'departure_stations_response.dto.g.dart';

@JsonSerializable()
class DepartureStationsResponse {
  @JsonKey(name: 'DepartureStationList')
  final List<DepartureStation> stations;

  @JsonKey(name: 'Error')
  final String error;

  @JsonKey(name: 'ErrorMsg')
  final String errorMessage;

  const DepartureStationsResponse({
    required this.stations,
    required this.error,
    required this.errorMessage,
  });

  factory DepartureStationsResponse.fromJson(Map<String, dynamic> json) => _$DepartureStationsResponseFromJson(json);

  Map<String, dynamic> toJson() => _$DepartureStationsResponseToJson(this);
}
