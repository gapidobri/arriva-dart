import 'package:flutter/material.dart';

TimeOfDay? timeOfDayFromString(String time) {
  if (time.isEmpty) return null;

  final parts = time.split(':');
  return TimeOfDay(
    hour: int.parse(parts[0]),
    minute: int.parse(parts[1]),
  );
}

String timeOfDayToString(TimeOfDay? time) {
  if (time == null) return '';
  return time.hour.toString() + ':' + time.minute.toString();
}

bool numberToBool(int number) => number == 1;
int boolToNumber(bool value) => value ? 1 : 0;
