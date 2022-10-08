import 'package:faker/faker.dart';

class ApiFactory {
  static List<Map<String, dynamic>> getAllCryptos() => [
        {
          'id': faker.lorem.toString(),
          'name': faker.lorem.toString(),
          'symbol': faker.lorem.toString(),
          'image': faker.lorem.toString(),
          'current_price': faker.randomGenerator.integer(1000),
          'price_change_percentage_24h': faker.randomGenerator.decimal()
        }
      ];
}
