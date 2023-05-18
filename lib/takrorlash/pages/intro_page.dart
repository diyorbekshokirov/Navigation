import 'package:flutter/material.dart';
import 'package:navigator/takrorlash/pages/login_page.dart';

class IntroPage extends StatefulWidget {
  const IntroPage({Key? key}) : super(key: key);

  @override
  State<IntroPage> createState() => _IntroPageState();
}

class _IntroPageState extends State<IntroPage> {
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
                child: Text('INTRO PAGE', style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold,),),
            ),
            const SizedBox(height: 60,),
            FilledButton(
                onPressed: (){
                  /// Bunday o'tkazish joriy page ning ustiga keyingisini qo'yadi;
                  Navigator.of(context).push(MaterialPageRoute(builder: (_) => const LogiPage()));
                },
                child: const Text('Go to Login', style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),),
            ),

          ],
        ),
      ),
    );
  }
}
