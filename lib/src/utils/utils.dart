import 'package:flutter/material.dart';

TimeOfDay timeOfDayFromString(String time) {
  final parts = time.split(':');
  return TimeOfDay(
    hour: int.parse(parts[0]),
    minute: int.parse(parts[1]),
  );
}

String timeOfDayToString(TimeOfDay time) {
  return time.hour.toString() + ':' + time.minute.toString();
}
