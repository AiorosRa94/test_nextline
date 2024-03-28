import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:test_nextline/presentation/home.dart';
import 'package:test_nextline/resources/screen/responsive/responsive.dart';

final GoRouter routes = GoRouter(
  routes: <RouteBase>[
    GoRoute(
      path: '/',
      name: '/',
      builder: (BuildContext context, GoRouterState state) {
        Responsive().init(context);
        return const Home();
      },
      routes: const <RouteBase>[],
    ),
  ],
);
