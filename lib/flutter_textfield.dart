import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class ChrisLoginPage extends StatefulWidget {
  const ChrisLoginPage({super.key});

  @override
  State<ChrisLoginPage> createState() => _ChrisLoginPageState();
}

class _ChrisLoginPageState extends State<ChrisLoginPage> {
  //username controller
  final TextEditingController _usernameController = TextEditingController();
  //password controller
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login to comment'),
        backgroundColor: Colors.black,
      ),
      //  drawer: const Drawer(),
      body: Column(
        children: [
          const SizedBox(
            height: 25,
          ),
          const Text(
            'Login to comment',
            style: TextStyle(
              fontWeight: FontWeight.w400,
              letterSpacing: 1,
              height: 1.2,
              fontSize: 18,
            ),
          ),
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
                      color: Color.fromARGB(255, 26, 163, 232),
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
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.horizontal()),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Color.fromARGB(255, 26, 163, 232),
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
                //  print("Login initializing");
                var username = _usernameController.text;
                var password = _passwordController.text;
                // print('Username: $username password: $password');
                //check if username and password isEmpty
                if (username.isEmpty || password.isEmpty) {
                  ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                      content: Text('Username or Password cannot be empty')));
                } else {
                  //Channel to login
                  ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text('Login Successful')));
                }
              },
              child: const Text('Login'),
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
                    },
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
