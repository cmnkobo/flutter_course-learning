import 'package:flutter/gestures.dart';
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
        body: Column(
          children: [
            Container(
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
            RichText(
                text: TextSpan(
                    text: "Don't have account?? ",
                    style: const TextStyle(
                      fontSize: 17.0,
                      color: Colors.black,
                      fontWeight: FontWeight.w400,
                      wordSpacing: 1.0,
                    ),
                    children: [
                  const WidgetSpan(child: Icon(Icons.supervised_user_circle)),
                  TextSpan(
                      text: ' Sign Up',
                      style: const TextStyle(
                        fontSize: 17.4,
                        fontStyle: FontStyle.italic,
                        fontWeight: FontWeight.w500,
                        color: Color.fromARGB(255, 8, 168, 217),
                      ),
                      recognizer: TapGestureRecognizer()
                        ..onTap = () {
                          print("You have clicked sign up");
                        }),
                ]))
          ],
        ));
  }
}
