
import 'package:flutter/material.dart';

import 'cart_balans.dart';

class ViewAccount extends StatefulWidget {
  const ViewAccount({Key? key}) : super(key: key);

  @override
  State<ViewAccount> createState() => _ViewAccountState();
}

class _ViewAccountState extends State<ViewAccount> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        minimum: const EdgeInsets.only(top: 100,left: 25, right: 25),
        child: Column(
          children: [

            /// Page Name
            const Text('View Accounts page'),

            /// Logo Banner
            Container(
              width:  double.infinity,
              height: 140,
              alignment: Alignment.center,
              color: Colors.grey,
              child: const Text('Banner/Logo'),
            ),
            const SizedBox(height: 25,),

            /// Account
            Container(
              width:  double.infinity,
              height: 60,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black),
              ),
              child: const Text('Account'),
            ),
            const SizedBox(height: 75,),

            /// Checking Account
            Container(
              width:  double.infinity,
              height: 90,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black),
              ),
              child: const Text('Checking Account',),
            ),
            const SizedBox(height: 25,),

            ///Savings Account
            Container(
              width:  double.infinity,
              height: 90,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black),
              ),
              child: const Text('Savings Account'),
            ),
            const SizedBox(height: 25,),

            /// Credit Card Balance Button
            GestureDetector(
              onTap: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (_) =>const CartBalance() ));
              },
              child: Container(
                width:  double.infinity,
                height: 90,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.black),
                    color: Colors.blue
                ),
                child: const Text('Credit Card Balance'),
              ),
            ),
            const SizedBox(height: 25,),
          ],
        ),
      ),
    );
  }
}
