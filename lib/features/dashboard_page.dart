import 'package:flutter/material.dart';

import 'bottom_navigation_widget.dart';

class DashboardPage extends StatefulWidget {
  final Widget child;
  const DashboardPage({required this.child, super.key});

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: widget.child,
      bottomNavigationBar: const BottomNavigationWidget(),
    );
  }
}
