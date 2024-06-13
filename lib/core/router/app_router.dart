import 'package:flutter/material.dart';
import 'package:movie_app/core/router/routes.dart';
import 'package:movie_app/features/auth/login/ui/screens/login_screen.dart';
import 'package:movie_app/features/home/ui/screens/home_screen.dart';

class AppRouter {
  static Route? onGenerateRoute(RouteSettings settings) {
    final arguments = settings.arguments;
    switch (settings.name) {
      case Routes.loginScreen:
        return MaterialPageRoute(
          builder: (context) => const LoginScreen(),
        );
      case Routes.homeScreen:
        return MaterialPageRoute(
          builder: (context) => const HomeScreen(),
        );
      default:
        return null;
    }
  }
}
