import 'package:aqskills_app/flutter_text.dart';
//import 'package:share_plus/share_plus.dart';
import 'package:aqskills_app/flutter_textfield.dart';
import 'package:aqskills_app/pages/comments.dart';
import 'package:aqskills_app/pages/home-data/news_card.dart';
import 'package:flutter/material.dart';

class HeadlineDetails extends StatefulWidget {
  const HeadlineDetails({super.key});

  @override
  State<HeadlineDetails> createState() => _HeadlineDetailsState();
}

class _HeadlineDetailsState extends State<HeadlineDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:
            const Text(' We have trained over a thousand Engineers who now work'
                " for companies like Apple, Microsoft, Amazon and Google"),
      ),
      body: SingleChildScrollView(
          child: Column(
        children: [
          Container(
            width: double.infinity,
            height: 250,
            decoration: const BoxDecoration(
              image: DecorationImage(
                  image: NetworkImage('https://shorturl.at/loswR'),
                  fit: BoxFit.cover),
            ),
            child: Container(
              color: Colors.black.withOpacity(0.6),
              alignment: Alignment.center,
              child: const Padding(
                padding: EdgeInsets.all(8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'We have trained over a thousand Engineers who now work for companies like Apple, Microsoft, Amazon and Google',
                      overflow: TextOverflow.ellipsis,
                      maxLines: 3,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                        height: 1.2,
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.calendar_today,
                              color: Colors.white,
                              size: 17,
                            ),
                            Text(
                              ' 26-10-2023      ',
                              style: TextStyle(
                                  fontSize: 17,
                                  height: 1.2,
                                  color: Colors.white,
                                  fontWeight: FontWeight.normal),
                            ),
                            Row(
                              children: [
                                Icon(
                                  Icons.person,
                                  color: Colors.white,
                                  size: 17,
                                ),
                                Text(
                                  ' Aiti NG',
                                  style: TextStyle(
                                      fontSize: 17,
                                      height: 1.2,
                                      color: Colors.white,
                                      fontWeight: FontWeight.normal),
                                )
                              ],
                            )
                          ],
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
          //adding share icon and comment
          Container(
            padding: const EdgeInsets.all(12.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const ChrisLoginPage()));
                  },
                  child: const Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Icon(
                        Icons.login,
                        size: 22,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        'Login',
                        style: TextStyle(
                          fontSize: 18,
                          height: 1.2,
                          fontWeight: FontWeight.normal,
                        ),
                      )
                    ],
                  ),
                ),
                InkWell(
                  onTap: () {
                    //Share.share('check out my website https://example.com');
                  },
                  child: const Padding(
                    padding: EdgeInsets.fromLTRB(0, 0, 12, 0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Icon(
                          Icons.share,
                          size: 22,
                        ),
                        SizedBox(
                          width: 3,
                        ),
                        Text(
                          'Share',
                          style: TextStyle(
                              fontSize: 18,
                              height: 1.2,
                              fontWeight: FontWeight.normal),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          const Divider(
            color: Colors.black,
          ),
          Container(
            padding: const EdgeInsets.all(15.0),
            child: const Column(
              children: [
                Text(
                  'We have trained over a thousand Engineers',
                  style: TextStyle(
                    fontSize: 21.0,
                    height: 1.3,
                    fontWeight: FontWeight.w500,
                  ),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'Imagine a world without roads. No matter how sleek and stylish'
                  "a car looks, it wouldn't be able to function without a well-built "
                  ' network of roads to support it movement. Similarly, in the realm of '
                  ' software development, while frontend development focuses on '
                  "the user-facing interface, it's the backend development that "
                  " provides the underlying infrastructure and functionality that "
                  " makes an application work seamlessly\n\nJust like a watch that "
                  "may look great on the outside but is useless without its intricate"
                  "gears and mechanisms working behind the scenes, an application "
                  "without a robust backend would fail to deliver its intended purpose. "
                  "Backend developers play a critical role in the development process"
                  " ensuring that the application's logic, databases, APIs, and server-side "
                  " operations are efficient and reliable. \n\nImagine a world without roads"
                  'No matter how sleek and stylish'
                  "a car looks, it wouldn't be able to function without a well-built "
                  ' network of roads to support it movement. Similarly, in the realm of '
                  ' software development, while frontend development focuses on '
                  "   the user-facing interface, it's the backend development that "
                  " provides the underlying infrastructure and functionality that "
                  " makes an application work seamlessly",
                  style: TextStyle(
                    fontSize: 15.0,
                    color: Colors.black,
                    fontWeight: FontWeight.normal,
                    height: 1.2,
                  ),
                ),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.fromLTRB(15.0, 0, 15, 6),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      const Text(
                        'Recent comments',
                        style: TextStyle(
                          fontSize: 16.0,
                          height: 1.2,
                          fontWeight: FontWeight.w500,
                        ),
                        textAlign: TextAlign.start,
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const ChrisBlogComment(
                                        commentArray: ChrisBlogComment,
                                      )));
                        },
                        child: const Row(
                          children: [
                            Icon(Icons.add_comment),
                            Text(
                              ' Add comment',
                              style: TextStyle(
                                fontSize: 16.0,
                                height: 1.2,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ]),
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Container(
              padding: const EdgeInsets.all(15.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8.0),
                color: Colors.grey.withOpacity(.5),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        width: 40,
                        height: 40,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                              image: NetworkImage('https://shorturl.at/mwNRZ'),
                              fit: BoxFit.cover),
                        ),

                        // child: const
                      ),
                      const Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            ' Christian Michael',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                              height: 1.3,
                              letterSpacing: 1,
                            ),
                          ),
                          Text(
                            ' 28-10-2023',
                            style: TextStyle(
                              fontWeight: FontWeight.normal,
                              color: Colors.black,
                              height: 1.3,
                              letterSpacing: 1,
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10.0,
                  ),
                  const Text(
                    "The user-facing interface, it's the backend development that "
                    " provides the underlying infrastructure and functionality that "
                    " makes an application work seamlessly",
                    style: TextStyle(
                      fontWeight: FontWeight.normal,
                      color: Colors.black,
                      fontSize: 15,
                      height: 1.3,
                      letterSpacing: 1,
                    ),
                  )
                ],
              ),
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const ChrisBlogComment(
                    commentArray: ChrisBlogComment,
                  ),
                ),
              );
            },
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Icon(
                  Icons.arrow_drop_down,
                  color: Colors.black,
                  weight: 20,
                ),
                Text(
                  "Load more",
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      height: 1.2,
                      color: Colors.black),
                )
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          )
        ],
      )),
    );
  }
}
