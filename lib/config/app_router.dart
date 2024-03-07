import 'package:flutter/material.dart';
import 'package:zabardash/screens/forgot_password_screen/forgot_password_screen.dart';
import 'package:zabardash/screens/home/home_screen.dart';
import 'package:zabardash/screens/location/location_screen.dart';
import 'package:zabardash/screens/login/login_screen.dart';
import 'package:zabardash/screens/registration/registration_screen.dart';

class AppRouter {
  static Route onGenerateRoute(RouteSettings settings) {
    print('The Route is: ${settings.name}');
    switch (settings.name) {
      case '/':
        return HomeScreen.route();
      case LocationScreen.routeName:
        return LocationScreen.route();
      case LoginScreen.routeName:
        return LoginScreen.route();
      case RegistrationScreen.routeName:
        return RegistrationScreen.route();
      case ForgotPasswordScreen.routeName:
        return ForgotPasswordScreen.route();
      default:
        return _errorRoute();
    }
  }

  static Route _errorRoute() {
    return MaterialPageRoute(
      builder: (_) => Scaffold(
        appBar: AppBar(
          title: const Text('error'),
        ),
      ),
      settings: const RouteSettings(name: '/error'),
    );
  }
}
