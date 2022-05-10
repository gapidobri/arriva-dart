// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'departure.model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Departure _$DepartureFromJson(Map<String, dynamic> json) => Departure(
      id: json['SPOD_SIF'] as int,
      regId: json['REG_ISIF'] as String,
      ovrId: json['OVR_SIF'] as String,
      carrierId: json['RPR_SIF'] as String,
      carrierName: json['RPR_NAZ'] as String,
      departureTime: timeOfDayFromString(json['ROD_IODH'] as String),
      arrivalTime: timeOfDayFromString(json['ROD_IPRI'] as String),
      travelTime: json['ROD_CAS'] as int,
      distance: json['ROD_KM'] as int,
      price: (json['VZCL_CEN'] as num).toDouble(),
      zl: json['VVLN_ZL'] as int,
      sequenceStart: json['ROD_ZAPZ'] as int,
      sequenceEnd: json['ROD_ZAPK'] as int,
    );

Map<String, dynamic> _$DepartureToJson(Departure instance) => <String, dynamic>{
      'SPOD_SIF': instance.id,
      'REG_ISIF': instance.regId,
      'OVR_SIF': instance.ovrId,
      'RPR_SIF': instance.carrierId,
      'RPR_NAZ': instance.carrierName,
      'ROD_IODH': timeOfDayToString(instance.departureTime),
      'ROD_IPRI': timeOfDayToString(instance.arrivalTime),
      'ROD_CAS': instance.travelTime,
      'ROD_KM': instance.distance,
      'VZCL_CEN': instance.price,
      'VVLN_ZL': instance.zl,
      'ROD_ZAPZ': instance.sequenceStart,
      'ROD_ZAPK': instance.sequenceEnd,
    };
