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
        title: const Text('Music App'),
        backgroundColor: const Color.fromARGB(255, 4, 87, 6),
      ),
      drawer: const Drawer(),
      backgroundColor: const Color.fromARGB(255, 196, 206, 200),
      body: Center(
        child: Container(
          padding: const EdgeInsets.all(10.0),
          width: 300,
          height: 200,
          child: Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12.0),
            ),
            color: const Color.fromARGB(255, 4, 68, 6),
            elevation: 10.0,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const ListTile(
                  title: Text(
                    'Burna Boy',
                    style: TextStyle(
                      fontSize: 25.0,
                      color: Colors.white,
                    ),
                  ),
                  subtitle: Text(
                    'African giant (album)',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  leading: Icon(
                    Icons.album,
                    size: 50.0,
                  ),
                  iconColor: Colors.white,
                ),
                ButtonBar(
                  alignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            foregroundColor:
                                const Color.fromARGB(255, 4, 68, 6),
                            backgroundColor: Colors.white),
                        onPressed: () {
                          print('Now playing....');
                        },
                        child: const Text('Play')),
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            foregroundColor:
                                const Color.fromARGB(255, 4, 68, 6),
                            backgroundColor: Colors.white),
                        onPressed: () {
                          print('You have paused..');
                        },
                        child: const Text('Pause')),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
