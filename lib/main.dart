import 'package:flutter/material.dart';
import 'package:zabardash/config/app_router.dart';
import 'package:zabardash/config/theme.dart';
import 'package:zabardash/screens/home/home_screen.dart';

import 'package:zabardash/screens/login/login_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Zabardash',
      theme: theme(),
      onGenerateRoute: AppRouter.onGenerateRoute,
      initialRoute: HomeScreen.routeName,
    );
  }
}
