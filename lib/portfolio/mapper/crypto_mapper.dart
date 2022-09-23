import 'package:portfolio_crypto/portfolio/model/crypto_view_data.dart';
import 'package:portfolio_crypto/shared/api/models/all_crypto_response.dart';

extension CryptoMapper on AllCryptoResponse {
  List<CryptoViewData> toViewData() {
    return allCryptoResponse
        .map((crypto) => CryptoViewData(
            id: crypto.id,
            name: crypto.name,
            image: crypto.image,
            current_price: crypto.current_price,
            price_change_percentage_24h: crypto.price_change_percentage_24h))
        .toList();
  }
}
