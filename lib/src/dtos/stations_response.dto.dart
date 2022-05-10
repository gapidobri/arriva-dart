import 'package:json_annotation/json_annotation.dart';

import '../models/station.model.dart';

part 'stations_response.dto.g.dart';

@JsonSerializable()
class StationsResponse {
  @JsonKey(name: 'DepartureStations')
  final List<Station> stations;

  @JsonKey(name: 'Error')
  final String error;

  @JsonKey(name: 'ErrorMsg')
  final String errorMessage;

  const StationsResponse({
    required this.stations,
    required this.error,
    required this.errorMessage,
  });

  factory StationsResponse.fromJson(Map<String, dynamic> json) => _$StationsResponseFromJson(json);

  Map<String, dynamic> toJson() => _$StationsResponseToJson(this);
}
