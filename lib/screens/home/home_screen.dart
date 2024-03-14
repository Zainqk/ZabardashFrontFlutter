import 'package:flutter/material.dart';
import 'package:zabardash/widgets/searchBar.dart';

import '../../widgets/appBar.dart';

  class HomeScreen extends StatelessWidget {
    static const String routeName = '/';

    static Route route() {
      return MaterialPageRoute(
          builder: (_) => HomeScreen(),
          settings: const RouteSettings(name: routeName));
    }

    const HomeScreen({super.key});

    @override
    Widget build(BuildContext context) {
      return Scaffold(
        appBar: buildAppBar(),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Column(
                children: [
                  CustomSearchBar()
                ],
              ),
            ),
          ),
        ),
      );
    }

  }
