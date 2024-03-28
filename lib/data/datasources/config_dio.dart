import 'package:dio/dio.dart';
import 'package:test_nextline/common/config/config.dart';

BaseOptions optionsDio = BaseOptions(
  baseUrl: API_URL,
  headers: {'Authorization': 'Bearer $TOKEN'},
  connectTimeout: const Duration(seconds: 5),
  receiveTimeout: const Duration(seconds: 5),
);
