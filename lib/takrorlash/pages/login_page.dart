import 'package:flutter/material.dart';
import 'package:navigator/takrorlash/pages/home_page.dart';

class LogiPage extends StatefulWidget {
  const LogiPage({Key? key}) : super(key: key);

  @override
  State<LogiPage> createState() => _LogiPageState();
}

class _LogiPageState extends State<LogiPage> {
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
              child: Text('LOGIN PAGE', style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold,),),
            ),
            const SizedBox(height: 60,),
            FilledButton(
              onPressed: (){
                /// Ushbu o'tkazish  joriy page ning o'rniga yangi pageni qo'yadi
                Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (_) => HomePage() ));
              },
              child: const Text('Go To Home', style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),),
            ),

          ],
        ),
      ),
    );
  }
}
