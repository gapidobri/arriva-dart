import 'package:chopper/chopper.dart';

import 'dtos/departure_stations_response.dto.dart';
import 'dtos/departures_response.dto.dart';
import 'dtos/stations_response.dto.dart';

part 'api.chopper.dart';

@ChopperApi()
abstract class ArrivaService extends ChopperService {
  static ChopperService create([ChopperClient? client]) => _$ArrivaService(client);

  @Get(path: 'WS_ArrivaSLO_TimeTable_DepartureStations.aspx')
  Future<Response<List<StationsResponse>>> getStations();

  @Get(path: 'WS_ArrivaSLO_TimeTable_TimeTableDepartures.aspx')
  Future<Response<List<DeparturesResponse>>> getDepartures(
    @Query('JPOS_IJPPZ') int startId,
    @Query('JPOS_IJPPK') int endId,
    @Query('VZVK_DAT') String date,
  );

  @Get(path: 'WS_ArrivaSLO_TimeTable_TimeTableDepartureStationList.aspx')
  Future<Response<List<DepartureStationsResponse>>> getDepartureStations(
    @Query('SPOD_SIF') int id,
    @Query('REG_ISIF') String regId,
    @Query('OVR_SIF') String ovrId,
    @Query('VVLN_ZL') int zl,
    @Query('ROD_ZAPZ') int sequenceStart,
    @Query('ROD_ZAPK') int sequenceEnd,
  );
}
