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
                child: const Align(
                  alignment: Alignment.bottomLeft,
                  child: Padding(
                    padding: EdgeInsets.all(5.0),
                    child: Column(
                      children: [
                        Text(
                          "Product",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                          ),
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
