import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
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
      body: SingleChildScrollView(
        child: getCryptos.when(
            data: (data) => Column(
                  children: data.map((e) => Text(e.name)).toList(),
                ),
            error: (Object error, StackTrace? stackTrace) {
              debugPrint('Erro: $error');
              return Column(
                children: [
                  Text('Ocorreu um erro: $error'),
                  TextButton(
                      onPressed: () {
                        ref.refresh(portfolioPageProvider);
                      },
                      child: const Text('Refresh')),
                ],
              );
            },
            loading: () => const CircularProgressIndicator()),
      ),
      bottomNavigationBar: const BottomNavigation(
        selectedIndex: 0,
      ),
    );
  }
}
