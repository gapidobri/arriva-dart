// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stations_response.dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

StationsResponse _$StationsResponseFromJson(Map<String, dynamic> json) =>
    StationsResponse(
      stations: (json['DepartureStations'] as List<dynamic>)
          .map((e) => Station.fromJson(e as Map<String, dynamic>))
          .toList(),
      error: json['Error'] as String,
      errorMessage: json['ErrorMsg'] as String,
    );

Map<String, dynamic> _$StationsResponseToJson(StationsResponse instance) =>
    <String, dynamic>{
      'DepartureStations': instance.stations,
      'Error': instance.error,
      'ErrorMsg': instance.errorMessage,
    };
