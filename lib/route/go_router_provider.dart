import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:test_router/features/dashboard_page.dart';
import 'package:test_router/route/named_route.dart';
import 'package:test_router/screen/cart_page.dart';
import 'package:test_router/screen/error/route_error_page.dart';
import 'package:test_router/screen/home_page.dart';
import 'package:test_router/screen/setting_page.dart';

final GlobalKey<NavigatorState> _rootNavigator = GlobalKey(debugLabel: 'root');
final GlobalKey<NavigatorState> _shellNavigator =
    GlobalKey(debugLabel: 'shell');

final goRouterProvider = Provider<GoRouter>((ref) {
  return GoRouter(
      navigatorKey: _rootNavigator,
      initialLocation: '/',
      routes: [
        GoRoute(
          path: '/home',
          name: root,
          builder: (context, state) => HomePage(),
        ),
        ShellRoute(
            navigatorKey: _shellNavigator,
            builder: (context, state, child) =>
                DashboardPage(key: state.pageKey, child: child),
            routes: [
              GoRoute(
                  path: '/',
                  name: home,
                  pageBuilder: (context, state) => NoTransitionPage(
                          child: HomePage(
                        key: state.pageKey,
                      ))),
              GoRoute(
                  path: '/cart',
                  name: cart,
                  pageBuilder: (context, state) => NoTransitionPage(
                          child: CartPage(
                        key: state.pageKey,
                      ))),
              GoRoute(
                  path: '/setting',
                  name: setting,
                  pageBuilder: (context, state) => NoTransitionPage(
                          child: SettingPage(
                        key: state.pageKey,
                        name: 'name',
                      ))),
            ])
      ],
      errorBuilder: (context, state) =>
          RouteErrorPage(errorMsg: state.error.toString()));
});
