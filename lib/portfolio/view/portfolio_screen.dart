import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:portfolio_crypto/portfolio/view/portfolio_page.dart';
import 'package:portfolio_crypto/shared/widgets/app_bar.dart';
import 'package:portfolio_crypto/shared/widgets/bottom_navigation.dart';

class PortfolioScreen extends ConsumerWidget {
  final VoidCallback onPressed;
  final CryptoViewLayoutData args;
  const PortfolioScreen({Key? key, required this.onPressed, required this.args})
      : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(80.0),
          child: AppBarPortfolio(
            title: 'Portfolio',
            onPressed: onPressed,
          ),
        ),
        body: ListView.builder(itemBuilder: (BuildContext context, index) {
          return Container(
            child: Text('teste'),
          );
        }),
        bottomNavigationBar: const BottomNavigation(
          selectedIndex: 0,
        ));
  }
}
