import 'package:aqskills_app/pages/cart.dart';
import 'package:flutter/material.dart';

class ChrisProductDetials extends StatefulWidget {
  const ChrisProductDetials({super.key});

  @override
  State<ChrisProductDetials> createState() => _ChrisProductDetialsState();
}

class _ChrisProductDetialsState extends State<ChrisProductDetials> {
  int quantity = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 300,
            flexibleSpace: FlexibleSpaceBar(
              background: Image.network(
                'https://shorturl.at/clDIP',
                fit: BoxFit.cover,
              ),
            ),
            leading: IconButton(
              icon: const Icon(Icons.arrow_back_ios_new),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
            actions: [
              Container(
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5), color: Colors.grey),
                child: IconButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const ChrisCartPage()));
                  },
                  icon: const Icon(
                    Icons.shopping_cart_checkout,
                    size: 30,
                    color: Colors.white,
                  ),
                ),
              ),
              const SizedBox(
                width: 10,
              )
            ],
          ),
          SliverList(
              delegate: SliverChildListDelegate([
            Container(
              padding: const EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        '#5,000',
                        style: TextStyle(
                          color: Colors.red,
                          fontSize: 25,
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.share),
                      )
                    ],
                  ),
                  const Divider(
                    color: Colors.grey,
                    thickness: 1,
                  ),
                  const Text(
                    'Long Sleeve T-Shirt',
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(4),
                    margin: const EdgeInsets.only(top: 3, bottom: 3),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Colors.orange.withOpacity(.5)),
                    child: const Text(
                      'Men Fashion',
                      style: TextStyle(
                        fontSize: 14,
                        height: 1.2,
                        letterSpacing: 1.2,
                      ),
                    ),
                  ),
                  const Text(
                    "Features: Comfortabl, eBusiness, Very Cool, DurableOccasions: Sports、Casual、Office、Outdoor、Dating、Everyday、Shopping.Kindly include a working and active phone number while ordering for easy and fast delivery.Have you been searching for a Store with the best creative, inspirational & soul lifting fashion outfit & shirt designs? Just stop by at Berrykey-sea-codx monthly.\n\nThe concept is designed to suit the very desire of having most of our everyday motivations in a simple, handy, convenient, comfortable and easy to handle wear. It's capable of bringing out a lot of vibe infact, all-in-one. It does well under any climatic condition and can be taken to any occasion serving the very purpose for which it is needed. ",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  Row(
                    children: [
                      InkWell(
                        onTap: () {
                          if (quantity > 1) {
                            setState(() {
                              quantity--;
                            });
                          }
                        },
                        child: Container(
                          width: 40,
                          height: 40,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: Colors.grey),
                          child: const Icon(Icons.remove),
                        ),
                      ),
                      const SizedBox(
                        width: 11,
                      ),
                      Text(
                        "$quantity",
                        style: const TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      const SizedBox(
                        width: 11,
                      ),
                      InkWell(
                        onTap: () {
                          setState(() {
                            quantity++;
                          });
                        },
                        child: Container(
                          width: 40,
                          height: 40,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: Colors.grey),
                          child: const Icon(Icons.add),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  InkWell(
                    onTap: () {
                      print('Adding item(s) to cart');
                    },
                    child: Container(
                      height: 50,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(7),
                        color: Colors.red,
                      ),
                      child: const Center(
                        child: Text(
                          'Add to Cart',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 23,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ]))
        ],
      ),
    );
  }
}
