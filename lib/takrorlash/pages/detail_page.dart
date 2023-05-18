
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:navigator/takrorlash/pages/order_page.dart';

class DetailPage extends StatefulWidget {
  const DetailPage({Key? key}) : super(key: key);

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
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
              child: Text('DETAIL PAGE', style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold,),),
            ),
            const SizedBox(height: 60,),
            FilledButton(
              onPressed: (){
                /// Bunday o'tkazish joriy page ning ustiga keyingisini qo'yadi;
                Navigator.of(context).push(MaterialPageRoute(builder: (_) => const OrderPage() ));
              },
              child: const Text('Go to Order Page', style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),),
            ),

          ],
        ),
      ),
    );
  }
}

