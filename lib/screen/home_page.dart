import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('home'),
          centerTitle: true,
        ),
        body: Center(
          child: ElevatedButton(
            onPressed: () => context.go('/cart'),
            child: const Text('go to cart page'),
          ),
        ));
  }
}
