import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:portfolio_crypto/portfolio/model/crypto_view_data.dart';
import 'package:portfolio_crypto/portfolio/view/portfolio_screen.dart';
import 'package:portfolio_crypto/shared/widgets/bottom_navigation.dart';
import 'portfolio_page_provider.dart';

class PortfolioPage extends ConsumerStatefulWidget {
  const PortfolioPage({Key? key}) : super(key: key);

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _PortfolioPageState();

  static const route = '/portfolio_page';
}

class _PortfolioPageState extends ConsumerState<PortfolioPage> {
  @override
  Widget build(BuildContext context) {
    final getCryptos = ref.watch(portfolioPageProvider);
    return Scaffold(
      body: getCryptos.when(
        data: (data) => PortfolioScreen(
            onPressed: () {},
            args: CryptoViewLayoutData(
                id: 'id',
                name: 'name',
                symbol: 'symbol',
                image: 'image',
                current_price: 0.0,
                price_change_percentage_24h: 0.0)),
        error: (Object error, StackTrace? stackTrace) {},
        loading: () {},
      ),

      // Scaffold(
      //   body: SingleChildScrollView(
      //     child: getCryptos.when(
      //         data: (data) => Column(
      //               children: data.map((e) => Text(e.name)).toList(),
      //             ),
      //       error: (Object error, StackTrace? stackTrace) {
      //         debugPrint('Erro: $error');
      //         return Column(
      //           children: [
      //             Text('Ocorreu um erro: $error'),
      //             TextButton(
      //                 onPressed: () {
      //                   ref.refresh(portfolioPageProvider);
      //                 },
      //                 child: const Text('Refresh')),
      //           ],
      //         );
      //       },
      //       loading: () => const CircularProgressIndicator()),
      // ),
      bottomNavigationBar: const BottomNavigation(
        selectedIndex: 0,
      ),
    );
  }
}

class CryptoViewLayoutData {
  final String id;
  final String name;
  final String symbol;
  final String image;
  final double current_price;
  final double price_change_percentage_24h;

  CryptoViewLayoutData(
      {required this.id,
      required this.name,
      required this.symbol,
      required this.image,
      required this.current_price,
      required this.price_change_percentage_24h});
}
