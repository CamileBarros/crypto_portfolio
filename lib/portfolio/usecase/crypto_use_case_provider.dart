import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:portfolio_crypto/shared/repository/crypto_repository_provider.dart';

import 'crypto_use_case.dart';

final cryptoUseCase = Provider(((ref) {
  return CryptoUseCase(cryptoRepository: ref.read(cryptoRepositoryProvider));
}));
