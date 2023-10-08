import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(const ChrisEntryWidget());
}

class ChrisEntryWidget extends StatelessWidget {
  const ChrisEntryWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Chris Application',
      theme: ThemeData(primarySwatch: Colors.red),
      home: const ChrisHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class ChrisHomePage extends StatefulWidget {
  const ChrisHomePage({
    super.key,
  });

  @override
  State<ChrisHomePage> createState() => _ChrisHomePageState();
}

class _ChrisHomePageState extends State<ChrisHomePage> {
  // Scaffold key
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 239, 245, 239),
      key: _scaffoldKey,
      appBar: AppBar(
        title: const Text('ChrisApp'),
        centerTitle: true,
        backgroundColor: Colors.green,
        elevation: 3.0,
        systemOverlayStyle: SystemUiOverlayStyle.dark,
      ),
      drawer: Drawer(
        backgroundColor: const Color.fromARGB(255, 239, 245, 239),
        child: ListView(
          padding: EdgeInsets.zero,
          children: const [
            UserAccountsDrawerHeader(
              decoration: BoxDecoration(
                  color: Colors.green,
                  image: DecorationImage(
                      image: AssetImage('assets/nature3.avif'),
                      fit: BoxFit.cover)),
              accountName: Text('Welcome Chris',
                  style: TextStyle(
                      fontWeight: FontWeight.bold, letterSpacing: 2.0)),
              accountEmail: Text(
                'chris@chrisconglomerate.org',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Federo',
                  letterSpacing: 2.0,
                ),
              ),
              currentAccountPicture: CircleAvatar(
                backgroundImage: NetworkImage('https://shorturl.at/mwNRZ'),
              ),
              // DrawerHeader(
              //     decoration: BoxDecoration(
              //       image: DecorationImage(
              //           opacity: 1.0,
              //           image: AssetImage('assets/nature3.avif'),
              //           fit: BoxFit.cover),
              //       color: Colors.green,
              //     ),
              //     child: Text(
              //       'Welcome to ChrisApp',
              //       style: TextStyle(
              //           fontSize: 25,
              //           fontWeight: FontWeight.bold,
              //           letterSpacing: 2.0,
              //           fontStyle: FontStyle.normal,
              //           fontFamily: 'Federo'),
              //     )),)
            ),
            ListTile(
              title: Text('Home'),
              leading: Icon(Icons.home),
            ),
            Divider(
              color: Colors.green,
              thickness: 2.0,
            ),
            ListTile(
              title: Text('About'),
              leading: Icon(Icons.info),
            ),
            Divider(
              color: Colors.green,
              thickness: 2.0,
              height: 0,
            ),
            ListTile(
              title: Text('Contact'),
              leading: Icon(Icons.contact_phone),
            ),
            Divider(
              color: Colors.green,
              thickness: 2.0,
              height: 0,
            ),
            ListTile(
              title: Text('Settings'),
              leading: Icon(Icons.settings),
            ),
            Divider(
              color: Colors.green,
              thickness: 2.0,
              height: 0,
            ),
            ListTile(
              title: Text('Logout'),
              leading: Icon(Icons.logout),
            ),
            Divider(
              color: Colors.green,
              thickness: 2.0,
              height: 0,
            ),
            ListTile(
              title: Text('App Version 1.0.0'),
            )
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/nature1.avif',
                height: 400,
                width: 400,
                alignment: Alignment.center,
              ),
              const TextField(
                  decoration: InputDecoration(
                      labelText: 'What is your name',
                      hintText: 'Type your response here',
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.vertical()))),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  """Welcome to ChrisApp page 
                  
      Technology has revolutionized communication, breaking down geographical barriers and facilitating instant global connectivity. 
      The advent of the internet and smartphones has made it possible for people to communicate and share information effortlessly. 
      Social media platforms, email, and video conferencing have transformed the way we interact with one another."""
                  """Technology has revolutionized communication, breaking down geographical barriers and facilitating instant global connectivity. 
      The advent of the internet and smartphones has made it possible for people to communicate and share information effortlessly. 
      Social media platforms, email, and video conferencing have transformed the way we interact with one another.""",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    color: Colors.black,
                    fontSize: 15,
                    letterSpacing: 1,
                    fontFamily: "Federo",
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: () {},
          backgroundColor: Colors.green,
          child: const Icon(Icons.share)),
      persistentFooterButtons: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            IconButton(
                onPressed: () {
                  print("You Clicked home");
                },
                icon: const Icon(Icons.home)),
            IconButton(
                onPressed: () {
                  print('You clicked settings');
                },
                icon: const Icon(Icons.settings)),
            IconButton(
                onPressed: () {
                  print('You clicked Contact');
                },
                icon: const Icon(Icons.contact_phone))
          ],
        ),
      ],
    );
  }
}
