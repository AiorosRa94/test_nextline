import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:test_nextline/presentation/home.dart';
import 'package:test_nextline/presentation/on_boarding.dart';
import 'package:test_nextline/resources/screen/responsive/responsive.dart';

final GoRouter routes = GoRouter(
  routes: <RouteBase>[
    GoRoute(
      path: '/',
      name: '/',
      builder: (BuildContext context, GoRouterState state) {
        Responsive().init(context);
        return const OnBoarding();
      },
      routes: <RouteBase>[
        GoRoute(
          path: 'home',
          name: 'home',
          builder: (BuildContext context, GoRouterState state) {
            Responsive().init(context);
            return const Home();
          },
          routes: const <RouteBase>[
            // Add more routes here Onboarding
          ],
        ),
      ],
    ),
  ],
);
