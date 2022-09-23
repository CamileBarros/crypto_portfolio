// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'all_crypto_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AllCryptoResponse _$AllCryptoResponseFromJson(Map<String, dynamic> json) =>
    AllCryptoResponse(
      allCryptoResponse: (json['allCryptoResponse'] as List<dynamic>)
          .map((e) => CryptoResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$AllCryptoResponseToJson(AllCryptoResponse instance) =>
    <String, dynamic>{
      'allCryptoResponse': instance.allCryptoResponse,
    };
