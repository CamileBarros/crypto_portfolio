import 'package:json_annotation/json_annotation.dart';
import 'package:portfolio_crypto/shared/api/models/crypto_response.dart';

part 'all_crypto_response.g.dart';

@JsonSerializable()
class AllCryptoResponse {
  final List<CryptoResponse> allCryptoResponse;

  AllCryptoResponse({required this.allCryptoResponse});

  factory AllCryptoResponse.fromJson(Map<String, dynamic> json) =>
      _$AllCryptoResponseFromJson(json);

  Map<String, dynamic> toJson() => _$AllCryptoResponseToJson(this);
}
