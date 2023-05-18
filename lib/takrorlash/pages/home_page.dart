import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:navigator/takrorlash/pages/detail_page.dart';
import 'package:navigator/takrorlash/pages/intro_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        minimum: const EdgeInsets.only(left: 40, right: 40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Center(
              child: Text('HOME PAGE', style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold,),),
            ),
            const SizedBox(height: 90,),
            FilledButton(
              onPressed: (){
                /// Ushbu o'tkazish Bita page orqaga qaytaradi;
                Navigator.of(context).pop();
              },
              child: const Text('Go To Back', style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),),
            ),
            const SizedBox(height: 25,),
            FilledButton(
              onPressed: (){
                /// Bunday o'tkazish joriy page ning ustiga keyingisini qo'yadi;
                Navigator.of(context).push(MaterialPageRoute(builder: (_) => const DetailPage() ));
              },
              child: const Text('Go To Detail Page', style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold),),
            ),

          ],
        ),
      ),
    );
  }
}
