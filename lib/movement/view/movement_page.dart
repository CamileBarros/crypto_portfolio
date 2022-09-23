import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:portfolio_crypto/shared/widgets/bottom_navigation.dart';

class MovementPage extends ConsumerStatefulWidget {
  const MovementPage({Key? key}) : super(key: key);

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _MovementPageState();

  static const route = '/movementPage';
}

class _MovementPageState extends ConsumerState<MovementPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(color: Colors.amber),
      bottomNavigationBar: const BottomNavigation(
        selectedIndex: 1,
      ),
    );
  }
}
