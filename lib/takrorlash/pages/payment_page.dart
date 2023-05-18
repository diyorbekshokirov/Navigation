import 'package:flutter/material.dart';
import 'package:navigator/takrorlash/pages/home_page.dart';


class PaymentPage extends StatefulWidget {
  const PaymentPage({Key? key}) : super(key: key);

  @override
  State<PaymentPage> createState() => _PaymentPageState();
}

class _PaymentPageState extends State<PaymentPage> {
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
              child: Text('PAYMENT PAGE', style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold,),),
            ),
            const SizedBox(height: 60,),
            FilledButton(
              /// Bunday o'tkazish biz kiritgan Page ni qaysi page dan keyin joylashtirishni belgilab beradi va oraliqdagi page larni olip tashlaydi;
              onPressed: (){
                Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (_) => const HomePage() ), (route){
                  debugPrint(route.toString());
                  debugPrint(route.navigator?.context.widget.toString());
                  debugPrint(route.navigator.toString());
                  return route.isFirst;
                });
                },
              child: const Text('Go to Home', style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),),
            ),

          ],
        ),
      ),
    );
  }
}
