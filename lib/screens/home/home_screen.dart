import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:zabardash/widgets/home_screen/searchBar.dart';

import '../../widgets/home_screen/appBar.dart';
import '../../widgets/home_screen/store_list_card.dart';

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
            padding: const EdgeInsets.only(left: 15),
            child: Column(
              children: [
                CustomSearchBar(),
                SizedBox(
                  height: 20,
                ),
                SizedBox(
                  height: 220,
                  child: ListView.builder(
                    itemCount: 8,
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return const StoreListCard();
                    },
                  ),
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Featured Stores',
                    style: Theme.of(context).textTheme.headlineSmall,
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
