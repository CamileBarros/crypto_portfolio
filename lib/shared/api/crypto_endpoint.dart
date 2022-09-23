import 'package:dio/dio.dart';

class CryptoEndpoint {
  final Dio dio;

  CryptoEndpoint({required this.dio});

  Future<Response> getAllCryptos() {
    return dio.get(
        "/coins/markets?vs_currency=brl&order=market_cap_desc&per_page=100&page=1&sparkline=false");
  }
}
