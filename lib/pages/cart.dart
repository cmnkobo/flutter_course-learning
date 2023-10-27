import 'package:flutter/material.dart';

class ChrisCartPage extends StatefulWidget {
  const ChrisCartPage({super.key});

  @override
  State<ChrisCartPage> createState() => _ChrisCartPageState();
}

class _ChrisCartPageState extends State<ChrisCartPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Cart"),
      ),
      body: Container(
        child: const Text('I am Cart page'),
      ),
    );
  }
}
