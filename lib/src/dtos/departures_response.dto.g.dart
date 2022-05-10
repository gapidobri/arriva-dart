// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'departures_response.dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DeparturesResponse _$DeparturesResponseFromJson(Map<String, dynamic> json) =>
    DeparturesResponse(
      departures: (json['Departures'] as List<dynamic>)
          .map((e) => Departure.fromJson(e as Map<String, dynamic>))
          .toList(),
      error: json['Error'] as String,
      errorMessage: json['ErrorMsg'] as String,
    );

Map<String, dynamic> _$DeparturesResponseToJson(DeparturesResponse instance) =>
    <String, dynamic>{
      'Departures': instance.departures,
      'Error': instance.error,
      'ErrorMsg': instance.errorMessage,
    };
