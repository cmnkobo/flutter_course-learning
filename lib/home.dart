import 'package:aqskills_app/pages/home-data/news_cardlist.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const ChrisEntryWidget());
}

class ChrisEntryWidget extends StatelessWidget {
  const ChrisEntryWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'News App',
      theme: ThemeData(
        colorScheme: const ColorScheme.light(
          primary: Colors.black,
          onPrimary: Colors.white,
        ),
      ),
      home: const ChrisHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
