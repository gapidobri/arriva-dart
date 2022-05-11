// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'departure_station.model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DepartureStation _$DepartureStationFromJson(Map<String, dynamic> json) =>
    DepartureStation(
      sequenceNumber: json['ROD_ZAP'] as int,
      name: json['POS_NAZ'] as String,
      arrivalTime: timeOfDayFromString(json['ROD_IPRI'] as String),
      departureTime: timeOfDayFromString(json['ROD_IODH'] as String),
      stop: numberToBool(json['ROD_STOP'] as int),
      lat: (json['ROD_LAT'] as num).toDouble(),
      lng: (json['ROD_LON'] as num).toDouble(),
    );

Map<String, dynamic> _$DepartureStationToJson(DepartureStation instance) =>
    <String, dynamic>{
      'ROD_ZAP': instance.sequenceNumber,
      'POS_NAZ': instance.name,
      'ROD_IPRI': timeOfDayToString(instance.arrivalTime),
      'ROD_IODH': timeOfDayToString(instance.departureTime),
      'ROD_STOP': boolToNumber(instance.stop),
      'ROD_LAT': instance.lat,
      'ROD_LON': instance.lng,
    };
