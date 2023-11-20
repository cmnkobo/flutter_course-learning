import 'package:aqskills_app/pages/Ecomm/slider.dart';
import 'package:aqskills_app/pages/home-data/chris_productcard.dart';
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
      body: SingleChildScrollView(
        child: Column(
          children: [
            ChrisEcommSlider().getEcommSlider(height),
            Divider(
              color: Colors.grey[400],
              thickness: 1,
            ),
            ChrisProductCard().getProductCard(context),
          ],
        ),
      ),
    );
  }
}
