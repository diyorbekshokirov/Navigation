
import 'package:flutter/material.dart';

class CartBalance extends StatefulWidget {
  const CartBalance({Key? key}) : super(key: key);

  @override
  State<CartBalance> createState() => _CartBalanceState();
}

class _CartBalanceState extends State<CartBalance> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

      ),
      body: SafeArea(
        minimum: const EdgeInsets.only(top: 50,left: 25, right: 25),
        child: Column(
          children: [

            /// Page Name
            const Text(' cart Balance page'),

            /// Logo Banner
            Container(
              width:  double.infinity,
              height: 140,
              alignment: Alignment.center,
              color: Colors.grey,
              child: const Text('Banner/Logo'),
            ),
            const SizedBox(height: 25,),

            /// cart balance
            Container(
              width:  double.infinity,
              height: 60,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black),
              ),
              child: const Text('Credit cart balance'),
            ),
            const SizedBox(height: 60,),


            /// nmadirlar
            Container(
              width:  double.infinity,
              height: 70,
              alignment: Alignment.center,
              color: Colors.grey,
            ),
            const SizedBox(height: 25,),

            /// bo'sh joy
            Container(
              width:  double.infinity,
              height: 75,
              alignment: Alignment.center,
              color: Colors.grey,
            ),
            const SizedBox(height: 25,),

            /// bo'sh joy
            Container(
              width:  double.infinity,
              height: 20,
              alignment: Alignment.center,
              color: Colors.grey,
            ),
            const SizedBox(height: 10,),

            /// bo'sh joy
            Container(
              width:  double.infinity,
              height: 20,
              alignment: Alignment.center,
              color: Colors.grey,
            ),
            const SizedBox(height: 30,),

            /// go buton
            Padding(
              padding: const EdgeInsets.only(top: 10,left: 240),
              child: ElevatedButton(
                onPressed: (){

                },
                child: Container(
                  alignment: Alignment.center,
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: const Text('GO',style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),),
                ),
              ),
            ),


          ],
        ),
      ),
    );
  }
}
