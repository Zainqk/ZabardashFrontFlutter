import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class FeaturedStoreListCard extends StatelessWidget {
  const FeaturedStoreListCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(right: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          //image stack
          Container(
            child: Stack(
              children: [
                //image
                ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Image.network(
                    'https://firebasestorage.googleapis.com/v0/b/the-chat-app-363a8.appspot.com/o/wajih?alt=media&token=70aba84c-bab1-4ca0-a70e-b51240ca0998',
                    fit: BoxFit.fill,
                    width: 150,
                    height: 150,
                  ),
                ),

                Positioned(
                  top: 7,
                  right: 7,
                  child: Container(
                    width: 30,
                    height: 30,
                    decoration: BoxDecoration(
                      color: Theme.of(context).primaryColorDark,
                      shape: BoxShape.circle,
                    ),
                    child: Icon(
                      Icons.favorite_border,
                      color: Colors.white,
                      size: 18,
                    ),
                  ),
                ),

                Positioned(
                  child: ClipRRect(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(8),
                      bottomRight: Radius.circular(15),
                    ),
                    child: Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 15, vertical: 4),
                      color: Theme.of(context).primaryColorDark,
                      child: Text(
                        'New',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          //Name and rating Text

          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              'Price Cutter',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 15,
              ),
            ),
          ),

          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              'Spring Field, MO, US',
              style: TextStyle(
                color: Colors.grey[600],
                fontSize: 12,
              ),
            ),
          )
        ],
      ),
    );
  }
}
