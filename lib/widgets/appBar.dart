import 'package:flutter/material.dart';

AppBar buildAppBar() {
  return AppBar(
    backgroundColor: Colors.white, // Background color of the app bar
    elevation: 0, // No shadow
    actions: [
      IconButton(
        onPressed: () {
          // Handle notification icon tap
        },
        icon: Icon(
          Icons.notifications_none,
          color: Color.fromARGB(255, 158, 217, 8),
        ),
      ),
      IconButton(
        onPressed: () {
          // Handle heart icon tap
        },
        icon: Icon(
          Icons.favorite_border,
          color: Color.fromARGB(255, 158, 217, 8),
        ),
      ),
      IconButton(
        onPressed: () {
          // Handle shopping bag icon tap
        },
        icon: Icon(
          Icons.shopping_bag_outlined,
          color: Color.fromARGB(255, 158, 217, 8),
        ),
      ),
    ],
  );
}
