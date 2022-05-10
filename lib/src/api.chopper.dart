// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api.dart';

// **************************************************************************
// ChopperGenerator
// **************************************************************************

// ignore_for_file: always_put_control_body_on_new_line, always_specify_types, prefer_const_declarations, unnecessary_brace_in_string_interps
class _$ArrivaService extends ArrivaService {
  _$ArrivaService([ChopperClient? client]) {
    if (client == null) return;
    this.client = client;
  }

  @override
  final definitionType = ArrivaService;

  @override
  Future<Response<List<StationsResponse>>> getStations() {
    final $url = 'WS_ArrivaSLO_TimeTable_DepartureStations.aspx';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<List<StationsResponse>, StationsResponse>($request);
  }

  @override
  Future<Response<List<DeparturesResponse>>> getDepartures(
      int startId, int endId, String date) {
    final $url = 'WS_ArrivaSLO_TimeTable_TimeTableDepartures.aspx';
    final $params = <String, dynamic>{
      'JPOS_IJPPZ': startId,
      'JPOS_IJPPK': endId,
      'VZVK_DAT': date
    };
    final $request = Request('GET', $url, client.baseUrl, parameters: $params);
    return client.send<List<DeparturesResponse>, DeparturesResponse>($request);
  }

  @override
  Future<Response<List<DepartureStationsResponse>>> getDepartureStations(int id,
      String regId, String ovrSif, int zl, int sequenceStart, int sequenceEnd) {
    final $url = 'WS_ArrivaSLO_TimeTable_TimeTableDepartureStationList.aspx';
    final $params = <String, dynamic>{
      'SPOD_SIF': id,
      'REG_ISIF': regId,
      'OVR_SIF': ovrSif,
      'VVLN_ZL': zl,
      'ROD_ZAPZ': sequenceStart,
      'ROD_ZAPK': sequenceEnd
    };
    final $request = Request('GET', $url, client.baseUrl, parameters: $params);
    return client.send<List<DepartureStationsResponse>,
        DepartureStationsResponse>($request);
  }
}
