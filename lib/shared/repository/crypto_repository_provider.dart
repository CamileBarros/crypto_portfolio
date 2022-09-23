import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:portfolio_crypto/shared/api/crypto_endpoint_provider.dart';
import 'package:portfolio_crypto/shared/repository/crypto_repository.dart';

final cryptoRepositoryProvider = Provider((ref) {
  return CryptoRepository(cryptoEndpoint: ref.read(cryptoEndpointProvider));
});
