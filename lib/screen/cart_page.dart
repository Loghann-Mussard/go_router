import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('panier'),
        centerTitle: true,
      ),
      body: Center(
          child: ElevatedButton(
        onPressed: () => context.go('/'),
        child: const Text('go to home page'),
      )),
    );
  }
}
