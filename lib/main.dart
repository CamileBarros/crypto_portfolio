import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:portfolio_crypto/portfolio/view/portfolio_page.dart';
import 'package:portfolio_crypto/shared/routes/app_routes.dart';

void main() {
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: PortfolioPage.route,
      onGenerateRoute: (settings) => AppRoutes().getRoute(settings),
    );
  }
}
