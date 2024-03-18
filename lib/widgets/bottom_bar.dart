import 'package:flutter/material.dart';

BottomAppBar bottomBar(BuildContext context) {
    return BottomAppBar(
      height: 90,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                IconButton(
                  onPressed: () {
                    // Handle home icon tap
                  },
                  icon: Icon(
                    Icons.home,
                    color: Theme.of(context).primaryColorDark,
                  ),
                ),
                Text(
                  'Home',
                  style: TextStyle(fontSize: 12, fontWeight: FontWeight.w700),
                ),
              ],
            ),
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                IconButton(
                  onPressed: () {
                    // Handle dollar icon tap
                  },
                  icon: Icon(
                    Icons.attach_money,
                    color: Theme.of(context).primaryColorDark,
                  ),
                ),
                Text(
                  'Saving',
                  style: TextStyle(fontSize: 12, fontWeight: FontWeight.w700),
                ),
              ],
            ),
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                IconButton(
                  onPressed: () {
                    // Handle recipe icon tap
                  },
                  icon: Icon(
                    Icons.restaurant,
                    color: Theme.of(context).primaryColorDark,
                  ),
                ),
                Text(
                  'Recipe',
                  style: TextStyle(fontSize: 12, fontWeight: FontWeight.w700),
                ),
              ],
            ),
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                IconButton(
                  onPressed: () {
                    // Handle cart icon tap
                  },
                  icon: Icon(
                    Icons.shopping_cart,
                    color: Theme.of(context).primaryColorDark,
                  ),
                ),
                Text(
                  'Cart',
                  style: TextStyle(fontSize: 12, fontWeight: FontWeight.w700),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

