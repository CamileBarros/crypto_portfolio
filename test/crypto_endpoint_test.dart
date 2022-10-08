import 'package:faker/faker.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:dio/dio.dart';
import 'package:portfolio_crypto/shared/api/crypto_endpoint.dart';
import 'shared/api_factory.dart';

class DioMock extends Mock implements Dio {}

void main() {
  late Response<List<Map<String, dynamic>>> sucess;
  late DioMock dioMock;
  late CryptoEndpoint cryptoEndpoint;

  When mockGetResponse() => when(
      () => dioMock.get(any(), queryParameters: any(named: 'queryParameters')));

  mockResponse(List<Map<String, dynamic>> factory, int statusCode) => Response(
      data: factory,
      statusCode: statusCode,
      requestOptions: RequestOptions(path: faker.internet.httpUrl()));

  setUp(() {
    dioMock = DioMock();
    cryptoEndpoint = CryptoEndpoint(dio: dioMock);
  });

  setUp(() {
    sucess = mockResponse(ApiFactory.getAllCryptos(), 200);
  });
  test('WHEN getAllCryptos is requested THEN returns 200', (() async {
    mockGetResponse().thenAnswer((_) async => sucess);
    final result = await cryptoEndpoint.getAllCryptos();
    expect(result.statusCode, equals(200));
    expect(result, sucess);
  }));
}
