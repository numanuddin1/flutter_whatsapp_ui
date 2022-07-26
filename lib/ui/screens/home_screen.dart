// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_whatsapp_ui/widgets/single_chat_widget.dart';
import 'package:flutter_whatsapp_ui/utilities/contants.dart';

import '../tabs/chat_tab.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        initialIndex: 1,
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            title: Text(
              'WhatsApp',
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 19
              ),
            ),
            actions: [
              Icon(Icons.search),
              PopupMenuButton(itemBuilder: (context) {
                return [
                  PopupMenuItem(child: Text('New Group')),
                  PopupMenuItem(child: Text('New broadcast')),
                  PopupMenuItem(child: Text('Linked devices')),
                  PopupMenuItem(child: Text('Starred messages')),
                  PopupMenuItem(child: Text('Settings')),
                ];
              })
            ],
            bottom: TabBar(
              indicatorSize: TabBarIndicatorSize.tab,
              indicatorColor: Colors.white,
              tabs: [
                Tab(
                  child: Icon(
                    Icons.camera_alt_rounded,
                  ),
                ),
                Tab(
                  child: Text(
                    'CHATS',
                    style: kTabTextStyle,
                  ),
                ),
                Tab(
                  child: Text(
                    'STATUS',
                    style: kTabTextStyle,
                  ),
                ),
                Tab(
                  child: Text(
                    'CALLS',
                    style: kTabTextStyle,
                  ),
                ),
              ],
            ),
          ),
          body: TabBarView(children: [
            Center(
              child: Text('Camera'),
            ),
           ChatTab(),
          ]),
          floatingActionButton: FloatingActionButton(
            onPressed: () {},
            child: Icon(Icons.message),
          ),
        ));
  }
}
