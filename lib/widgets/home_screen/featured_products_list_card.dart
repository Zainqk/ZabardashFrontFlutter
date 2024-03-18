import 'package:flutter/material.dart';

class FeaturedProductsCard extends StatelessWidget {
  const FeaturedProductsCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 15),
      child: SizedBox(
        height: 120,
        width: 80,
        child: Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: Image.network(
                'https://firebasestorage.googleapis.com/v0/b/the-chat-app-363a8.appspot.com/o/wajih?alt=media&token=70aba84c-bab1-4ca0-a70e-b51240ca0998',
                fit: BoxFit.fill,
                width: 80,
                height: 80,
              ),
            ),
            Text(
              "Kinder's Fire Roasted",
              style: TextStyle(
                fontSize: 13,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            )
          ],
        ),
      ),
    );
  }
}
