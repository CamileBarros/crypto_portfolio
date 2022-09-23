// ignore_for_file: non_constant_identifier_names

import 'package:json_annotation/json_annotation.dart';

part 'crypto_response.g.dart';

@JsonSerializable()
class CryptoResponse {
  final String id;
  final String name;
  final String image;
  final double current_price;
  final double price_change_percentage_24h;

  CryptoResponse(
      {required this.id,
      required this.name,
      required this.image,
      required this.current_price,
      required this.price_change_percentage_24h});

  factory CryptoResponse.fromJson(Map<String, dynamic> json) =>
      _$CryptoResponseFromJson(json);

  Map<String, dynamic> toJson() => _$CryptoResponseToJson(this);
}
