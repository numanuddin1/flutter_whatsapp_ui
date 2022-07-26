// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_whatsapp_ui/ui/screens/home_screen.dart';
import 'package:flutter_whatsapp_ui/utilities/contants.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      title: 'WhatsApp',
      home: const HomePage(),
      theme: ThemeData(
        primaryColor: kTealLightColor,
        accentColor: kTealLightColor,
        appBarTheme: AppBarTheme(
          color: kTealLightColor,
          elevation: 0,
        )
      ),
    );
  }
}
