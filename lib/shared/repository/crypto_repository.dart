import 'package:portfolio_crypto/shared/api/crypto_endpoint.dart';
import 'package:portfolio_crypto/shared/api/models/all_crypto_response.dart';
import 'package:portfolio_crypto/shared/api/models/crypto_response.dart';

class CryptoRepository {
  final CryptoEndpoint cryptoEndpoint;

  CryptoRepository({required this.cryptoEndpoint});

  Future<AllCryptoResponse> getAllCryptos() async {
    final cryptos = await cryptoEndpoint.getAllCryptos();
    return AllCryptoResponse(
        allCryptoResponse: List.from(cryptos.data.map((crypto) {
      return CryptoResponse.fromJson(crypto);
    })));
  }
}
