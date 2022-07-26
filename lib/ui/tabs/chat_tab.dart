import 'package:flutter/material.dart';
import 'package:flutter_whatsapp_ui/widgets/single_chat_widget.dart';
class ChatTab extends StatelessWidget {
  const ChatTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: [
            SingleChatWidget(
              chatTitle: "Robb Stark",
              chatMessage: 'Did you check Maisie\'s latest post?',
              seenColor: Colors.grey,
              imageUrl:
              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRDXCC-UB67rk0HtbmrDvVsIGvnPfTAMc_tSg&usqp=CAU', chatDate: '9:35 am',),
            SingleChatWidget(
              chatTitle: "Jaqen H'ghar",
              chatMessage: 'Valar Morghulis',
              seenColor: Colors.grey,
              imageUrl:
              'https://static3.srcdn.com/wordpress/wp-content/uploads/2017/06/Jaqen-Hghar-Game-of-Thrones.jpg', chatDate: '7:12 am',),
            SingleChatWidget(
              chatTitle: "Sansa Stark",
              chatMessage: 'The North Remembers',
              seenColor: Colors.blue,
              imageUrl:
              'https://i.insider.com/5ce420e193a15232821d3084?width=700', chatDate: 'Yesterday',),
            SingleChatWidget(
              chatTitle: "Jon Snow",
              chatMessage: 'Stick em\' with the pointy end',
              seenColor: Colors.grey,
              imageUrl:
              'https://i.insider.com/5cb3c8e96afbee373d4f2b62?width=700', chatDate: 'Yesterday',),
            SingleChatWidget(
              chatTitle: "Arya Stark",
              chatMessage: 'I wish GoT had better ending',
              seenColor: Colors.blue,
              imageUrl:
              'https://static-koimoi.akamaized.net/wp-content/new-galleries/2020/09/maisie-williams-aka-arya-stark-of-game-of-thrones-someone-told-me-in-season-three-that-i-was-going-to-kill-the-night-king001.jpg', chatDate: '11/2/2022',),
            SingleChatWidget(
              chatTitle: "Robb Stark",
              chatMessage: 'Did you check Maisie\'s latest post?',
              seenColor: Colors.blue,
              imageUrl:
              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRDXCC-UB67rk0HtbmrDvVsIGvnPfTAMc_tSg&usqp=CAU', chatDate: '12/1/2022',),
            SingleChatWidget(
              chatTitle: "Jon Snow",
              chatMessage: 'Stick em\' with the pointy end',
              seenColor: Colors.blue,
              imageUrl:
              'https://i.insider.com/5cb3c8e96afbee373d4f2b62?width=700', chatDate: '10/1/2022',),
          ],
        ),
      ),
    );
  }
}

