import 'package:flutter/material.dart';

class ChrisProductCard {
  Widget getProductCard(width) {
    return (Wrap(
      children: [
        const Padding(padding: EdgeInsets.all(0)),
        for (var i = 0; i < 10; i++)
          Container(
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey),
            ),
            width: 180,
            height: 220,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.network(
                  'https://shorturl.at/fkmY8',
                  width: width / 2,
                  height: 150,
                  fit: BoxFit.cover,
                ),
                Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Container(
                    decoration: const BoxDecoration(),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Men Fashion',
                          style: TextStyle(
                            fontSize: 11,
                            color: Colors.brown[600],
                          ),
                        ),
                        const Text(
                          'Long Sleeve T-Shirt',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                        const SizedBox(
                          height: 4,
                        ),
                        Row(
                          children: [
                            Text(
                              '#5,000',
                              style: TextStyle(
                                  color: Colors.red[900],
                                  fontSize: 17,
                                  fontWeight: FontWeight.w900),
                            ),
                            const Spacer(),
                            Container(
                              padding: const EdgeInsets.all(3),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  color: Colors.orange),
                              child: const Text(
                                'New Designs',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 11),
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          )
      ],
    ));
  }
}
