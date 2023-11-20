import 'package:flutter/material.dart';

void main() {
  runApp(const IncreamentEntry());
}

class IncreamentEntry extends StatelessWidget {
  const IncreamentEntry({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Increment App",
      theme: ThemeData(
          colorScheme: const ColorScheme.light(
              primary: Colors.black, onPrimary: Colors.white)),
      home: const IncrementHome(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class IncrementHome extends StatefulWidget {
  const IncrementHome({super.key});

  @override
  State<IncrementHome> createState() => _IncrementHomeState();
}

class _IncrementHomeState extends State<IncrementHome> {
  int quantity = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        foregroundColor: Colors.white,
        title: const Text(
          'Increment App',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.share),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.search),
            iconSize: 27,
          )
        ],
      ),
      drawer: const Drawer(),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 360,
              width: double.infinity,
              decoration: const BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage('https://shorturl.at/clDIP'),
                    fit: BoxFit.fitWidth),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Men Fashion',
                    style: TextStyle(
                      fontSize: 20,
                      height: 1.5,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Colors.grey),
                    child: Padding(
                      padding: const EdgeInsets.all(3.0),
                      child: InkWell(
                        onTap: () {},
                        child: const Row(
                          children: [
                            Icon(Icons.share),
                            Text(
                              'Share',
                              style: TextStyle(
                                fontSize: 18,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(8, 0, 8, 0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Long Sleeve T-Shirt',
                    style: TextStyle(
                      fontSize: 22,
                      height: 1.5,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const Text(
                    '#5,000',
                    style: TextStyle(
                        color: Colors.red,
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        height: 1.5),
                  ),
                  const Text(
                    "Features: Comfortabl, eBusiness, Very Cool, DurableOccasions: Sports、Casual、Office、Outdoor、Dating、Everyday、Shopping.Kindly include a working and active phone number while ordering for easy and fast delivery.Have you been searching for a Store with the best creative, inspirational & soul lifting fashion outfit & shirt designs? Just stop by at Berrykey-sea-codx monthly.\n\nThe concept is designed to suit the very desire of having most of our everyday motivations in a simple, handy, convenient, comfortable and easy to handle wear. It's capable of bringing out a lot of vibe infact, all-in-one. It does well under any climatic condition and can be taken to any occasion serving the very purpose for which it is needed. ",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      InkWell(
                        onTap: () {
                          // COde here
                          setState(() {
                            if (quantity > 1) {
                              quantity--;
                            }
                          });
                        },
                        child: Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(6),
                            color: Colors.grey,
                          ),
                          child: const Icon(Icons.remove),
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Text(
                        quantity.toString(),
                        style: const TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      InkWell(
                        onTap: () {
                          //Code here
                          setState(() {
                            quantity++;
                          });
                        },
                        child: Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(6),
                              color: Colors.grey),
                          child: const Icon(Icons.add),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  InkWell(
                    onTap: () {},
                    child: Container(
                      height: 50,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(6),
                          color: Colors.red),
                      child: const Center(
                        child: Text(
                          'Add to Cart',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 25,
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
