import 'package:flutter/material.dart';
import 'package:navigator/takrorlash/pages/payment_page.dart';

class OrderPage extends StatefulWidget {
  const OrderPage({Key? key}) : super(key: key);

  @override
  State<OrderPage> createState() => _OrderPageState();
}

class _OrderPageState extends State<OrderPage> {
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
              child: Text('ORDER PAGE', style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold,),),
            ),
            const SizedBox(height: 60,),
            FilledButton(
              onPressed: (){
                /// Bunday o'tkazish joriy page ning ustiga keyingisini qo'yadi;
                Navigator.of(context).push(MaterialPageRoute(builder: (_) => const PaymentPage()));
              },
              child: const Text('Go to Payment', style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),),
            ),

          ],
        ),
      ),
    );
  }
}
