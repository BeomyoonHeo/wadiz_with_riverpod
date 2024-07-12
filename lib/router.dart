import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:wadiz_with_riverpod/home/home_page.dart';
import 'package:wadiz_with_riverpod/wadiz_app_shell.dart';

final _rootNavigatorKey = GlobalKey<NavigatorState>();
final _shellNavigatorKey = GlobalKey<NavigatorState>();

final router = GoRouter(
  navigatorKey: _rootNavigatorKey,
  routes: [
    ShellRoute(
        navigatorKey: _shellNavigatorKey,
        builder: (context, state, child) => WadizAppShell(
              currentIndex: 0,
              child: child,
            ),
        routes: [
          GoRoute(
            path: '/',
            parentNavigatorKey: _shellNavigatorKey,
            builder: (context, state) => const HomePage(),
          ),
        ]),
  ],
);
