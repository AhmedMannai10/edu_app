import 'package:go_router/go_router.dart';
import 'package:flutter/material.dart';
import '../features/auth/presentation/login/login_page.dart';

class AppRoutes {

/// The route configuration.
static final GoRouter router = GoRouter(
  routes: <RouteBase>[
    GoRoute(
      path: '/',
      builder: (BuildContext context, GoRouterState state) {
        return const LoginPage();
      },
      routes: <RouteBase>[
        GoRoute(
          path: 'details',
          builder: (BuildContext context, GoRouterState state) {
            return Container(
                color: Colors.blue,
                child: const Text("Hello There"),

                );
          },
        ),
      ],
    ),
  ],

);
}
