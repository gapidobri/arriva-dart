import 'package:json_annotation/json_annotation.dart';

import '../models/departure.model.dart';

part 'departures_response.dto.g.dart';

@JsonSerializable()
class DeparturesResponse {
  @JsonKey(name: 'Departures')
  final List<Departure> departures;

  @JsonKey(name: 'Error')
  final String error;

  @JsonKey(name: 'ErrorMsg')
  final String errorMessage;

  const DeparturesResponse({
    required this.departures,
    required this.error,
    required this.errorMessage,
  });

  factory DeparturesResponse.fromJson(Map<String, dynamic> json) => _$DeparturesResponseFromJson(json);

  Map<String, dynamic> toJson() => _$DeparturesResponseToJson(this);
}
