import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:faker/faker.dart';
import 'package:portfolio_crypto/shared/api/crypto_endpoint.dart';
import 'package:portfolio_crypto/shared/repository/crypto_repository.dart';
import 'shared/api_factory.dart';
import 'package:dio/dio.dart';

class CryptoEndpointMock extends Mock implements CryptoEndpoint {}

void main() {
  late CryptoEndpointMock cryptoEndpointMock;
  late CryptoRepository cryptoRepository;
  setUp(
    () {
      cryptoEndpointMock = CryptoEndpointMock();
      cryptoRepository = CryptoRepository(
        cryptoEndpoint: cryptoEndpointMock,
      );
    },
  );
  test(
    'WHEN getAllCryptos is requested by CryptoRepository THEN getAllCryptos from CryptoEndpoint is called ',
    () async {
      when((() => cryptoEndpointMock.getAllCryptos())).thenAnswer(
        (_) async => Response(
          data: ApiFactory.getAllCryptos(),
          requestOptions: RequestOptions(
            path: faker.internet.httpUrl(),
          ),
        ),
      );
      await cryptoRepository.getAllCryptos();
      verify(() => cryptoEndpointMock.getAllCryptos()).called(1);
    },
  );
}
