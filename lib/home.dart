import 'package:aqskills_app/main.dart';
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

class ChrisHomePage extends StatefulWidget {
  const ChrisHomePage({super.key});

  @override
  State<ChrisHomePage> createState() => _ChrisHomePageState();
}

class _ChrisHomePageState extends State<ChrisHomePage> {
  int pageindex = 0;
  String apptitle = 'Tech App';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          apptitle,
          style: const TextStyle(
            fontSize: 20.0,
            letterSpacing: 1.0,
            fontFamily: 'Lato',
            fontWeight: FontWeight.w400,
          ),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.share),
            onPressed: () {
              print('Share');
            },
          ),
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () {
              // ignore: avoid_print
              print('Search');
            },
          ),
          const SizedBox(
            width: 10.0,
          )
        ],
        backgroundColor: pageindex == 0
            ? Colors.black
            : const Color.fromARGB(255, 6, 130, 202),
      ),
      body: IndexedStack(
        index: pageindex,
        children: const [
          ChrisBlogPage(),
          ChrisEcommerce(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: const Color.fromARGB(255, 237, 9, 9),
        currentIndex: pageindex,
        onTap: (index) {
          if (index == 0) {
            apptitle = "Tech App";
          } else {
            apptitle = "Ecommerce";
          }
          if (index == 2) {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const ChrisCartPage()));
          } else {
            setState(() {
              pageindex = index;
            });
          }
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_bag_outlined),
            label: 'Ecommerce',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            label: 'Cart',
          )
        ],
      ),
    );
  }
}

class TechNewsBlog1 {
  Widget getCard1({thumbnail, headline, author, fullstory, comments}) {
    return Card(
      child: Row(
        children: [
          Container(
            height: 100,
            width: 100,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(thumbnail),
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Text(
                    headline,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: const TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text.rich(
                    TextSpan(
                        text: comments,
                        style: const TextStyle(
                          fontSize: 12.0,
                          color: Colors.grey,
                          fontWeight: FontWeight.w800,
                        ),
                        children: [
                          TextSpan(
                              text: author,
                              style: const TextStyle(
                                fontSize: 12.0,
                                fontWeight: FontWeight.w700,
                                color: Colors.blue,
                              ),
                              recognizer: TapGestureRecognizer()
                                ..onTap = () {
                                  print('You have clicked indian times');
                                }),
                          const TextSpan(
                              text: ' Updated: Oct 19, 2023, 01:22 PM IST',
                              style: TextStyle(fontSize: 10)),
                        ]),
                  ),
                  const SizedBox(
                    height: 10.0,
                  ),
                  Text(
                    fullstory,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    softWrap: true,
                    style: const TextStyle(
                      fontSize: 15.0,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

class TechNewsBlog {
  Widget getCard({thumbnail, headline, author, fullstory, comments}) {
    return Card(
      child: Row(
        children: [
          Container(
            height: 100,
            width: 100,
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: NetworkImage(thumbnail), fit: BoxFit.cover),
            ),
          ),
          Expanded(
              child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  headline,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.w900,
                    height: 1.2,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text.rich(
                  TextSpan(
                      text: 'by',
                      style: const TextStyle(
                          fontSize: 12.0,
                          color: Colors.grey,
                          height: 1.2,
                          fontWeight: FontWeight.w900),
                      children: [
                        TextSpan(
                            text: author,
                            style: const TextStyle(
                              fontSize: 12.0,
                              color: Colors.blue,
                              height: 1.2,
                              fontWeight: FontWeight.w500,
                            ),
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                print(author);
                              }),
                        TextSpan(
                          text: comments,
                          style: const TextStyle(
                            fontSize: 12.0,
                            color: Colors.grey,
                            height: 1.2,
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                      ]),
                ),
                const SizedBox(
                  height: 10.0,
                ),
                Text(fullstory),
              ],
            ),
          ))
        ],
      ),
    );
  }
}

class ChrisBlogPage extends StatefulWidget {
  const ChrisBlogPage({super.key});

  @override
  State<ChrisBlogPage> createState() => _ChrisBlogPageState();
}

class _ChrisBlogPageState extends State<ChrisBlogPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              width: double.infinity,
              height: 250,
              decoration: const BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage('https://shorturl.at/loswR'),
                    fit: BoxFit.cover),
              ),
              alignment: Alignment.bottomLeft,
              child: Container(
                decoration: BoxDecoration(
                  gradient:
                      LinearGradient(begin: Alignment.bottomRight, colors: [
                    Colors.black.withOpacity(1.0),
                    Colors.black.withOpacity(0.3),
                  ]),
                ),
                padding: const EdgeInsets.all(10.0),
                alignment: Alignment.bottomLeft,
                child: const Text(
                  "We have trained over a thousand Engineers who now work"
                  " for companies like Apple, Microsoft, Amazon and Google",
                  maxLines: 3,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                      fontSize: 23.0,
                      color: Colors.white,
                      height: 1.2,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
            for (var i = 0; i < 3; i++)
              TechNewsBlog().getCard(
                  thumbnail: 'https://shorturl.at/duGLS',
                  headline: 'Aiti Full Stack Development Program',
                  author: ' Aiti NG',
                  fullstory:
                      'Learn and acquire acquire the skills and knowledge'
                      ' necessary to create end-to-end web applications.',
                  comments: ' 2 (comments)'),
            for (var i = 0; i < 3; i++)
              TechNewsBlog1().getCard1(
                  thumbnail: 'https://shorturl.at/dmBC4',
                  headline: 'Google to manufacture Pixel smartphones in'
                      ' India, first devices expected in 2024',
                  author: ' Indian Times',
                  fullstory:
                      'Google has announced that it will manufacture its flagship'
                      ' Pixel phones in India as part of the Make in India initiative.'
                      ' The company aims to start manufacturing the Pixel 8 in India '
                      ' and roll out the devices in 2024.',
                  comments: 'By'),
          ],
        ),
      ),
    );
  }
}

//create page for ecommerce
class ChrisEcommerce extends StatefulWidget {
  const ChrisEcommerce({super.key});

  @override
  State<ChrisEcommerce> createState() => _ChrisEcommerceState();
}

class _ChrisEcommerceState extends State<ChrisEcommerce> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Text('Ecommrce'),
    );
  }
}

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
