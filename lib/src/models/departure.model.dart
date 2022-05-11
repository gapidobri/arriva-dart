import 'package:flutter/material.dart';
import 'package:json_annotation/json_annotation.dart';

import '../utils/utils.dart';

part 'departure.model.g.dart';

@JsonSerializable()
class Departure {
  @JsonKey(name: 'SPOD_SIF')
  final int id;

  @JsonKey(name: 'REG_ISIF')
  final String regId;

  @JsonKey(name: 'OVR_SIF')
  final String ovrId;

  @JsonKey(name: 'RPR_SIF')
  final String carrierId;

  @JsonKey(name: 'RPR_NAZ')
  final String carrierName;

  @JsonKey(
    name: 'ROD_IODH',
    fromJson: timeOfDayFromString,
    toJson: timeOfDayToString,
  )
  final TimeOfDay? departureTime;

  @JsonKey(
    name: 'ROD_IPRI',
    fromJson: timeOfDayFromString,
    toJson: timeOfDayToString,
  )
  final TimeOfDay? arrivalTime;

  @JsonKey(name: 'ROD_CAS')
  final int travelTime;

  @JsonKey(name: 'ROD_KM')
  final int distance;

  @JsonKey(name: 'VZCL_CEN')
  final double price;

  @JsonKey(name: 'VVLN_ZL')
  final int zl;

  @JsonKey(name: 'ROD_ZAPZ')
  final int sequenceStart;

  @JsonKey(name: 'ROD_ZAPK')
  final int sequenceEnd;

  const Departure({
    required this.id,
    required this.regId,
    required this.ovrId,
    required this.carrierId,
    required this.carrierName,
    required this.departureTime,
    required this.arrivalTime,
    required this.travelTime,
    required this.distance,
    required this.price,
    required this.zl,
    required this.sequenceStart,
    required this.sequenceEnd,
  });

  factory Departure.fromJson(Map<String, dynamic> json) => _$DepartureFromJson(json);

  Map<String, dynamic> toJson() => _$DepartureToJson(this);
}
