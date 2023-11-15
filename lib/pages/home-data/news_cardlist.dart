import 'package:aqskills_app/pages/cart.dart';
import 'package:aqskills_app/pages/home-data/news_card.dart';
import 'package:aqskills_app/pages/search_blog.dart';
import 'package:aqskills_app/pages/shop.dart';
import 'package:flutter/material.dart';

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
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const ChrisSearchBlog()));
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
