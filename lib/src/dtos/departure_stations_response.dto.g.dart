// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'departure_stations_response.dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DepartureStationsResponse _$DepartureStationsResponseFromJson(
        Map<String, dynamic> json) =>
    DepartureStationsResponse(
      stations: (json['DepartureStationList'] as List<dynamic>)
          .map((e) => DepartureStation.fromJson(e as Map<String, dynamic>))
          .toList(),
      error: json['Error'] as String,
      errorMessage: json['ErrorMsg'] as String,
    );

Map<String, dynamic> _$DepartureStationsResponseToJson(
        DepartureStationsResponse instance) =>
    <String, dynamic>{
      'DepartureStationList': instance.stations,
      'Error': instance.error,
      'ErrorMsg': instance.errorMessage,
    };
