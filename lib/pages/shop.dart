import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class ChrisEcommerce extends StatefulWidget {
  const ChrisEcommerce({super.key});

  @override
  State<ChrisEcommerce> createState() => _ChrisEcommerceState();
}

class _ChrisEcommerceState extends State<ChrisEcommerce> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Container(
        child: CarouselSlider(
          items: [
            Container(
              width: double.infinity,
              margin: const EdgeInsets.all(5.0),
              decoration: const BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage("https://shorturl.at/jkpxU"),
                    fit: BoxFit.cover),
              ),
              child: Container(
                decoration: BoxDecoration(
                  gradient:
                      LinearGradient(begin: Alignment.bottomRight, colors: [
                    Colors.black.withOpacity(1),
                    Colors.black.withOpacity(.0),
                  ]),
                ),
                child: Align(
                  alignment: Alignment.bottomLeft,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          //add background color to the fashion text
                          decoration: BoxDecoration(
                            color: Colors.black.withOpacity(.5),
                            borderRadius: BorderRadius.circular(5),
                          ),

                          child: const Text(
                            'Men Fashion',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 15.0,
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        const Text(
                          "Product",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 21.0,
                              fontWeight: FontWeight.w900),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              '#5,000',
                              style: TextStyle(
                                fontSize: 20,
                                color: Colors.orange,
                              ),
                            ),
                            Text(
                              'Buy now',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w800,
                                  fontSize: 15),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
          options: CarouselOptions(
            height: (height / 4.2),
            aspectRatio: 16 / 9,
            viewportFraction: 0.8,
            initialPage: 0,
            enableInfiniteScroll: true,
            reverse: false,
            autoPlay: true,
            autoPlayInterval: const Duration(seconds: 3),
            autoPlayAnimationDuration: const Duration(milliseconds: 800),
            autoPlayCurve: Curves.fastOutSlowIn,
            enlargeCenterPage: true,
            enlargeFactor: 0.3,
            scrollDirection: Axis.horizontal,
          ),
        ),
      ),
    );
  }
}
