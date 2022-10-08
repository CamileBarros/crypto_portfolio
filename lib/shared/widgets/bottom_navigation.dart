import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:portfolio_crypto/movement/view/movement_page.dart';
import 'package:portfolio_crypto/portfolio/view/portfolio_page.dart';

class BottomNavigation extends ConsumerStatefulWidget {
  final int selectedIndex;

  const BottomNavigation({Key? key, required this.selectedIndex})
      : super(key: key);

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _BottomNavigationState();
}

class _BottomNavigationState extends ConsumerState<BottomNavigation> {
  void _itemTapped(index) {
    switch (index) {
      case 0:
        Navigator.pushNamed(context, PortfolioPage.route);
        break;
      case 1:
        Navigator.pushNamed(context, MovementPage.route);
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Portfolio'),
        BottomNavigationBarItem(icon: Icon(Icons.wallet), label: 'Movement')
      ],
      currentIndex: widget.selectedIndex,
      selectedItemColor: Colors.blueAccent[400],
      onTap: _itemTapped,
    );
  }
}
