import 'package:edu_app/features/auth/presentation/signup/signup_page.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

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
            name: "signup",
            path: 'signup',
            builder: (BuildContext context, GoRouterState state) {
              return Container(
                color: Colors.blue,
                child: const SignUpPage(),
              );
            },
          ),
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
