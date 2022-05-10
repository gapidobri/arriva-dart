library arriva_dart;

import 'dart:convert';

import 'package:arriva_dart/src/models/departure.model.dart';
import 'package:arriva_dart/src/models/departure_station.model.dart';
import 'package:arriva_dart/src/models/station.model.dart';
import 'package:chopper/chopper.dart';
import 'package:crypto/crypto.dart';
import 'package:flutter/services.dart';
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
        (Request request) {
          final timeStamp = DateFormat('yyyyMMdHmmss').format(DateTime.now());
          final token = md5.convert(utf8.encode('R300_VozniRed_2015$timeStamp')).toString();

          final uri = Uri.parse(request.url);

          final newUri = uri.replace(queryParameters: {
            'cTimestamp': timeStamp,
            'cToken': token,
            'json': '1',
          });

          return request.copyWith(url: newUri.toString());
        }
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

  Future<List<Departure>> getDepartures(int startId, int endId, String date) async {
    final response = await _arrivaService.getDepartures(startId, endId, date);
    return response.body?.first.departures ?? [];
  }

  Future<List<DepartureStation>> getDepartureStations(
    int id,
    String regId,
    String ovrSif,
    int zl,
    int sequenceStart,
    int sequenceEnd,
  ) async {
    final response = await _arrivaService.getDepartureStations(id, regId, ovrSif, zl, sequenceStart, sequenceEnd);
    return response.body?.first.stations ?? [];
  }
}
