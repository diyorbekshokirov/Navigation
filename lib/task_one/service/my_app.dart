



import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:navigator/task_one/pages/login_page.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home:Login(),
    ) ;
  }
}