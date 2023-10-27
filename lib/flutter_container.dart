import 'package:flutter/material.dart';

void main() {
  runApp(const ChrisEntryWidget());
}

class ChrisEntryWidget extends StatelessWidget {
  const ChrisEntryWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Chris Application',
      theme: ThemeData(primarySwatch: Colors.green),
      home: const ChrisHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class ChrisHomePage extends StatefulWidget {
  const ChrisHomePage({super.key});

  @override
  State<ChrisHomePage> createState() => _ChrisHomePageState();
}

class _ChrisHomePageState extends State<ChrisHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Chris Application'),
        backgroundColor: Colors.green,
      ),
      body: Container(
        alignment: Alignment.center,
        padding: const EdgeInsets.all(8.0),
        height: 100.0,
        width: 500.0,
        margin: const EdgeInsets.all(8.0),
        decoration: BoxDecoration(
            border: Border.all(
              color: Colors.black,
              width: 3.0,
            ),
            borderRadius: BorderRadius.circular(13.0)),
        child: const Text(
          "I'm working very hard",
          style: TextStyle(
            fontSize: 25.0,
          ),
        ),
      ),
    );
  }
}
