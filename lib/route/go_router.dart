import 'dart:js';

import 'package:go_router/go_router.dart';
import 'package:test_router/screen/cart_page.dart';
import 'package:test_router/screen/home_page.dart';
import 'package:test_router/screen/setting_page.dart';

//SIMPLE ROUTE
//simple route to navigate between HomePage and CartPage
final GoRouter _router = GoRouter(
  routes: [
    GoRoute(
      path: "/",
      builder: (context, state) => const HomePage(),
    ),
    GoRoute(
      path: "/settings",
      builder: (context, state) => const CartPage(),
    )
  ],
);

//SUBROUTES
//subRoutes in go_router : to go to Cart Page, we need to have '/home/cart' in URL
final GoRouterSubRoute _routerSubRoute = GoRouter(routes: [
  GoRoute(
      path: '/home',
      builder: (context, state) => const HomePage(),
      routes: [
        GoRoute(path: 'cart', builder: (context, state) => const CartPage()),
      ])
]);

//PARAMETERS
final GoRouterParameter _goRouterParameter = GoRouter(routes: [
  GoRoute(path: '/', builder: (context, state) => const HomePage(), routes: [
    GoRoute(
        path: 'setting/:name',
        builder: (context, state) => SettingPage(
              name: state.params['name']!,
            ))
  ])
]);
