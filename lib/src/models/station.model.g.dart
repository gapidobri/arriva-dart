// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'station.model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Station _$StationFromJson(Map<String, dynamic> json) => Station(
      id: json['JPOS_IJPP'] as int,
      name: json['POS_NAZ'] as String,
    );

Map<String, dynamic> _$StationToJson(Station instance) => <String, dynamic>{
      'JPOS_IJPP': instance.id,
      'POS_NAZ': instance.name,
    };
