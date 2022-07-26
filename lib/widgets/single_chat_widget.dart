// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class SingleChatWidget extends StatelessWidget {
  String chatTitle;
  String chatMessage;
  Color seenColor;
  String imageUrl;
  String chatDate;

  SingleChatWidget(
      {super.key,
      required this.chatTitle,
      required this.chatMessage,
      required this.seenColor,
      required this.imageUrl, required this.chatDate});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 5.0),
          child: CircleAvatar(
            backgroundImage: NetworkImage(imageUrl),
            radius: 28,
          ),
        ),
        Expanded(
            child: ListTile(
          title: Text(chatTitle,   style: const TextStyle(fontWeight: FontWeight.w500)),
          subtitle: Row(
            children: [
              Icon(
                seenColor == Colors.blue ? Icons.done_all : Icons.done,
                size: 16,
                color: seenColor,
              ),
              SizedBox(
                width: 3,
              ),
              Expanded(child: Text(chatMessage, style: const TextStyle(overflow: TextOverflow.ellipsis),))
            ],
          ),
              trailing: Column(
                children:  [
                  Padding(
                    padding: EdgeInsets.only(top: 8.0),
                    child: Text(
                      chatDate,
                    ),
                  ),
                ],
              ),
        ))
      ],
    );
  }
}
