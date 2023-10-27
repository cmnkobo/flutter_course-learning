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
      body: Column(
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
            child: const Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Icon(
                      Icons.share,
                      size: 22,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      'Share',
                      style: TextStyle(
                        fontSize: 18,
                        height: 1.2,
                        fontWeight: FontWeight.normal,
                      ),
                    )
                  ],
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Icon(
                      Icons.comment,
                      size: 22,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      ' (2) Comments',
                      style: TextStyle(
                          fontSize: 18,
                          height: 1.2,
                          fontWeight: FontWeight.normal),
                    )
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
