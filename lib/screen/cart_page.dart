import 'package:flutter/material.dart';

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
        child: Column(
          children: [const Text('panier')],
        ),
      ),
    );
  }
}
