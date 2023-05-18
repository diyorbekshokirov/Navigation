import 'package:flutter/material.dart';
import 'package:navigator/takrorlash/pages/intro_page.dart';



class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home:IntroPage(),
    ) ;
  }
}