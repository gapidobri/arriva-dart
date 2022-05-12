import 'dart:async';
import 'dart:convert';

import 'package:chopper/chopper.dart';
import 'package:crypto/crypto.dart';
import 'package:intl/intl.dart';

class AuthInterceptor implements RequestInterceptor {
  @override
  FutureOr<Request> onRequest(Request request) {
    final timeStamp = DateFormat('yyyyMMddHHmmss').format(DateTime.now());
    final token = md5.convert(utf8.encode('R300_VozniRed_2015$timeStamp')).toString();

    final uri = Uri.parse(request.url);

    final newUri = uri.replace(queryParameters: {
      'cTimestamp': timeStamp,
      'cToken': token,
      'json': '1',
    });

    return request.copyWith(url: newUri.toString());
  }
}
