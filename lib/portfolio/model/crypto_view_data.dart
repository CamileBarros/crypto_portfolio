// ignore_for_file: non_constant_identifier_names

class CryptoViewData {
  final String id;
  final String name;
  final String image;
  final double current_price;
  final double price_change_percentage_24h;

  CryptoViewData(
      {required this.id,
      required this.name,
      required this.image,
      required this.current_price,
      required this.price_change_percentage_24h});
}
