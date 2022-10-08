import 'dart:core';

import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:portfolio_crypto/portfolio/model/crypto_view_data.dart';
import 'package:portfolio_crypto/portfolio/usecase/crypto_use_case_provider.dart';

class PortfolioNotifier extends StateNotifier<List<CryptoViewData>> {
  PortfolioNotifier() : super([]);
}

// final portfolioPageProvider =
//     StateNotifierProvider<PortfolioNotifier, List<CryptoViewData>>(((ref, args) async {
//   return ref.read(cryptoUseCase).execute();
// }));
