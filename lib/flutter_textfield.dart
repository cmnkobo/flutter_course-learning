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
  //username controller
  final TextEditingController _usernameController = TextEditingController();
  //password controller
  final TextEditingController _passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Chris Application'),
        backgroundColor: Colors.green,
      ),
      drawer: const Drawer(),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: TextField(
              controller: _usernameController,
              decoration: const InputDecoration(
                  icon: Icon(Icons.person),
                  iconColor: Colors.black,
                  border: OutlineInputBorder(),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      width: 1.5,
                      color: Color.fromARGB(255, 11, 17, 11),
                    ),
                  ),
                  labelText: 'Type your user name',
                  hintText: 'Type your user name here'),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: TextField(
              controller: _passwordController,
              obscureText: true,
              decoration: const InputDecoration(
                  icon: Icon(Icons.lock),
                  iconColor: Colors.black,
                  border: OutlineInputBorder(),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      width: 1.5,
                    ),
                  ),
                  labelText: 'Enter your password',
                  hintText: 'Type your Password here'),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: ElevatedButton(
                onPressed: () {
                  print("Login initializing");
                  var username = _usernameController.text;
                  var password = _passwordController.text;
                  print('Username: $username password: $password');
                },
                child: const Text('Login')),
          )
        ],
      ),
    );
  }
}
