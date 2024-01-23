import 'package:anm_mart/features/auth/view/screens/auth_screen.dart';
import 'package:flutter/material.dart';

Route<dynamic> generateRoute(RouteSettings routeSettings) {
  switch (routeSettings.name) {
    case AuthSceen.routeName:
      return MaterialPageRoute(
        builder: (context) => const AuthSceen(),
      );
    default:
      return MaterialPageRoute(
        builder: (context) => const AuthSceen(),
      );
  }
}
