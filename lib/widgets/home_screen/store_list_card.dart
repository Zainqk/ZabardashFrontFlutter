import 'package:flutter/material.dart';

class StoreListCard extends StatelessWidget {
  const StoreListCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(right: 15),
      width: 280,
      child: Column(
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
                    width: 300,
                    height: 170,
                  ),
                ),

                Positioned(
                  top: 10,
                  right: 10,
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
                // Green box on top left corner
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
                        'Most Visited',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          //Name and rating Text
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Trader Joe\'s',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
              ),
              Align(
                alignment: Alignment.centerRight,
                child: Row(
                  children: [
                    Icon(
                      Icons.star,
                      color: Colors.amber,
                    ),
                    SizedBox(width: 4),
                    Text(
                      '4.6',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                    ),
                    SizedBox(width: 4),
                    Text(
                      '(1000+)',
                      style: TextStyle(
                        color: Colors.grey[600],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              'Walnut Creek, CA, United States',
              style: TextStyle(
                color: Colors.grey[600],
              ),
            ),
          )
        ],
      ),
    );
  }
}
