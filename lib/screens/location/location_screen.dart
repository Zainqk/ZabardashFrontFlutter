import 'package:flutter/material.dart';

class LocationScreen extends StatelessWidget {
  static const String routeName = '/location';

  static Route route() {
    return MaterialPageRoute(
        builder: (_) => LocationScreen(),
        settings: const RouteSettings(name: routeName));
  }

  const LocationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    );
  }
}
