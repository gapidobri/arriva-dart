library arriva_dart;

export 'src/models/departure.model.dart';
export 'src/models/station.model.dart';
export 'src/models/departure_station.model.dart';

import 'package:arriva_dart/src/models/departure.model.dart';
import 'package:arriva_dart/src/models/departure_station.model.dart';
import 'package:arriva_dart/src/models/station.model.dart';
import 'package:arriva_dart/src/utils/auth_interceptor.dart';
import 'package:chopper/chopper.dart';
import 'package:intl/intl.dart';

import 'src/api.dart';
import 'src/dtos/departure_stations_response.dto.dart';
import 'src/dtos/departures_response.dto.dart';
import 'src/dtos/stations_response.dto.dart';
import 'src/utils/json_serializable_converter.dart';

const Map<Type, JsonFactory> factories = {
  DepartureStationsResponse: DepartureStationsResponse.fromJson,
  DeparturesResponse: DeparturesResponse.fromJson,
  StationsResponse: StationsResponse.fromJson,
};

class Arriva {
  late final ChopperClient _client;
  late final ArrivaService _arrivaService;

  Arriva() {
    _client = ChopperClient(
      baseUrl: 'https://prometws.alpetour.si',
      converter: const JsonSerializableConverter(factories),
      interceptors: [
        AuthInterceptor(),
      ],
      services: [
        ArrivaService.create(),
      ],
    );
    _arrivaService = _client.getService<ArrivaService>();
  }

  Future<List<Station>> getStations() async {
    final response = await _arrivaService.getStations();
    return response.body?.first.stations ?? [];
  }

  Future<List<Departure>> getDepartures(Station start, Station end, DateTime date) async {
    final response = await _arrivaService.getDepartures(
      start.id,
      end.id,
      DateFormat('yyyy-MM-dd').format(date),
    );
    return response.body?.first.departures ?? [];
  }

  Future<List<DepartureStation>> getDepartureStations(Departure departure) async {
    final response = await _arrivaService.getDepartureStations(
      departure.id,
      departure.regId,
      departure.ovrId,
      departure.zl,
      departure.sequenceStart,
      departure.sequenceEnd,
    );
    return response.body?.first.stations ?? [];
  }
}
