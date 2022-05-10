import 'package:flutter/material.dart';
import 'package:json_annotation/json_annotation.dart';

import '../utils/utils.dart';

part 'departure_station.model.g.dart';

@JsonSerializable()
class DepartureStation {
  @JsonKey(name: 'ROD_ZAP')
  final int sequenceNumber;

  @JsonKey(name: 'POS_NAZ')
  final String name;

  @JsonKey(
    name: 'ROD_IPRI',
    fromJson: timeOfDayFromString,
    toJson: timeOfDayToString,
  )
  final TimeOfDay arrivalTime;

  @JsonKey(
    name: 'ROD_IODH',
    fromJson: timeOfDayFromString,
    toJson: timeOfDayToString,
  )
  final TimeOfDay departureTime;

  @JsonKey(name: 'ROD_STOP')
  final bool stop;

  @JsonKey(name: 'ROD_LAT')
  final double lat;

  @JsonKey(name: 'ROD_LON')
  final double lng;

  const DepartureStation({
    required this.sequenceNumber,
    required this.name,
    required this.arrivalTime,
    required this.departureTime,
    required this.stop,
    required this.lat,
    required this.lng,
  });

  factory DepartureStation.fromJson(Map<String, dynamic> json) => _$DepartureStationFromJson(json);

  Map<String, dynamic> toJson() => _$DepartureStationToJson(this);
}
