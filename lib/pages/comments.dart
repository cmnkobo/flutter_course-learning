// ignore_for_file: no_logic_in_create_state

import 'package:comment_box/comment/comment.dart';
import 'package:flutter/material.dart';

class ChrisBlogComment extends StatefulWidget {
  final commentArray;
  const ChrisBlogComment({super.key, this.commentArray});

  @override
  State<ChrisBlogComment> createState() =>
      _ChrisBlogCommentState(commentArray: commentArray);
}

class _ChrisBlogCommentState extends State<ChrisBlogComment> {
  dynamic commentArray;
  _ChrisBlogCommentState({this.commentArray});
  final formKey = GlobalKey<FormState>();

  final commentController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Comments"),
      ),
      body: Container(
        child: CommentBox(
          userImage: CommentBox.commentImageParser(
              imageURLorPath: "assets/img/userpic.jpg"),
          labelText: 'Write a comment...',
          errorText: 'Comment cannot be blank',
          withBorder: false,
          sendButtonMethod: () {
            // if (formKey.currentState!.validate()) {
            //   print(commentController.text);
            //   setState(() {
            //     var value = {
            //       'name': 'New User',
            //       'pic':
            //           'https://lh3.googleusercontent.com/a-/AOh14GjRHcaendrf6gU5fPIVd8GIl1OgblrMMvGUoCBj4g=s400',
            //       'message': commentController.text,
            //       'date': '2021-01-01 12:00:00'
            //     };
            //     filedata.insert(0, value);
            //   });
            //   commentController.clear();
            //   FocusScope.of(context).unfocus();
            // } else {
            //   print("Not validated");
            // }
          },
          formKey: formKey,
          commentController: commentController,
          backgroundColor: Colors.pink,
          textColor: Colors.white,
          sendWidget:
              const Icon(Icons.send_sharp, size: 30, color: Colors.white),
          child: commentChild(commentArray),
        ),
      ),
    );
  }

  Widget commentChild(data) {
    return ListView(
      children: [
        for (var i = 0; i < data.length; i++)
          Padding(
            padding: const EdgeInsets.fromLTRB(2.0, 8.0, 2.0, 0.0),
            child: ListTile(
              leading: GestureDetector(
                onTap: () async {
                  // Display the image in large form.
                  print("Comment Clicked");
                },
                child: Container(
                  height: 50.0,
                  width: 50.0,
                  decoration: const BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.all(Radius.circular(50))),
                  child: CircleAvatar(
                      radius: 50,
                      backgroundImage: CommentBox.commentImageParser(
                          imageURLorPath: data[i]['pic'])),
                ),
              ),
              title: Text(
                data[i]['name'],
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
              subtitle: Text(data[i]['message']),
              trailing:
                  Text(data[i]['date'], style: const TextStyle(fontSize: 10)),
            ),
          )
      ],
    );
  }
}
