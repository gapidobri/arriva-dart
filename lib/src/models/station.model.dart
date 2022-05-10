import 'package:json_annotation/json_annotation.dart';

part 'station.model.g.dart';

@JsonSerializable()
class Station {
  @JsonKey(name: 'JPOS_IJPP')
  final int id;
  @JsonKey(name: 'POS_NAZ')
  final String name;

  const Station({
    required this.id,
    required this.name,
  });

  factory Station.fromJson(Map<String, dynamic> json) => _$StationFromJson(json);

  Map<String, dynamic> toJson() => _$StationToJson(this);
}
