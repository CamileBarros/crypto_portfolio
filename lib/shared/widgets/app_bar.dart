import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class AppBarPortfolio extends ConsumerWidget {
  final String title;
  final VoidCallback onPressed;
  const AppBarPortfolio(
      {Key? key, required this.title, required this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return AppBar(
      backgroundColor: Colors.white,
      title: Text(
        title,
        style: const TextStyle(color: Colors.black),
      ),
      actions: [
        IconButton(
            onPressed: onPressed,
            icon: const Icon(Icons.search),
            color: Colors.black),
      ],
      automaticallyImplyLeading: false,
    );
  }
}
