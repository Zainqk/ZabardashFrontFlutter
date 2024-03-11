import 'package:flutter/material.dart';

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
      appBar: AppBar(
        backgroundColor: Colors.black,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                child: TextFormField(
                  decoration: InputDecoration(
                    prefix: IconButton(
                      icon: const Icon(
                        Icons.search,
                        color: Colors.grey,
                      ),
                      onPressed: () {},
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
