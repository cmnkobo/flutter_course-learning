import 'package:aqskills_app/main.dart';
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
        width: double.infinity,
        height: 200,
        padding: const EdgeInsets.all(8.0),
        child: const Text(
          'Welcome to AQskill',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 24.0,
            fontWeight: FontWeight.bold,
            color: Color.fromARGB(255, 235, 18, 14),
          ),
        ),
      ),
    );
  }
}
