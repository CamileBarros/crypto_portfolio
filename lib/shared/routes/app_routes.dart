import 'package:flutter/material.dart';
import 'package:portfolio_crypto/movement/view/movement_page.dart';
import 'package:portfolio_crypto/portfolio/view/portfolio_page.dart';

class AppRoutes extends RouteSettings {
  Route? getRoute(RouteSettings settings) {
    switch (settings.name) {
      case PortfolioPage.route:
        return MaterialPageRoute(builder: (context) => const PortfolioPage());
      case MovementPage.route:
        return MaterialPageRoute(builder: (context) => const MovementPage());
    }
    return null;
  }
}
