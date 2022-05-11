import 'package:arriva_dart/arriva_dart.dart';

void main() async {
  final arriva = Arriva();

  final stations = await arriva.getStations();

  final startStation = stations[13];
  final endStation = stations[24];

  final departures = await arriva.getDepartures(startStation, endStation, DateTime.now());

  final departureStations = await arriva.getDepartureStations(departures[0]);
}
