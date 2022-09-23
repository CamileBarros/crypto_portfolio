import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:portfolio_crypto/portfolio/model/crypto_view_data.dart';
import 'package:portfolio_crypto/portfolio/usecase/crypto_use_case_provider.dart';

final portfolioPageProvider =
    FutureProvider<List<CryptoViewData>>(((ref) async {
  return ref.read(cryptoUseCase).execute();
}));
