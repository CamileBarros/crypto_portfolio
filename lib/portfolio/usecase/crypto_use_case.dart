import 'package:portfolio_crypto/portfolio/mapper/crypto_mapper.dart';
import 'package:portfolio_crypto/portfolio/model/crypto_view_data.dart';
import 'package:portfolio_crypto/shared/repository/crypto_repository.dart';

class CryptoUseCase {
  final CryptoRepository cryptoRepository;

  CryptoUseCase({required this.cryptoRepository});

  Future<List<CryptoViewData>> execute() async {
    final response = await cryptoRepository.getAllCryptos();
    return response.toViewData();
  }
}
