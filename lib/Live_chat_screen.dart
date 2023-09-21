import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Utils/appimages.dart';

class Live_chat_screen extends StatefulWidget {
  final String imagePath;
  const Live_chat_screen({required this.imagePath, super.key});

  @override
  State<Live_chat_screen> createState() => _Live_chat_screenState();
}

class _Live_chat_screenState extends State<Live_chat_screen> {
  int _currenIndex = 0;

  List<String> _messages = [
    "Great service!",
    "Amazing experience!",
    "Highly recommended!",
    "Very professional!",
    "Excellent!",

  ];
  @override
  Widget build(BuildContext context) {


    return
      Scaffold(

      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(widget.imagePath),
                fit: BoxFit.cover,
              ),
            ),
          ),


          Positioned.fill(
            child: Padding(
              padding: const EdgeInsets.only(left: 5.0, top: 400),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Expanded(
                    child: ListView.builder(
                      itemCount: _messages.length,
                      itemBuilder: (context, index) {
                        return ListTile(
                          leading: CircleAvatar(
                            child: Icon(Icons.person),
                          ),
                          title: Text(_messages[index]),
                        );
                      },
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: "Add a comment...",
                        filled: true,
                        prefixIcon: Icon(Icons.message),
                        suffixIcon: Icon(Icons.tag_faces),
                        fillColor: Colors.white,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(60),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );




  }
}
