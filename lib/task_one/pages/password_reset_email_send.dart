

import 'package:flutter/material.dart';
import 'package:navigator/task_one/pages/login_page.dart';

class PasswordResetEmail extends StatefulWidget {
  const PasswordResetEmail({Key? key}) : super(key: key);

  @override
  State<PasswordResetEmail> createState() => _PasswordResetState();
}

class _PasswordResetState extends State<PasswordResetEmail> {

  TextEditingController  password = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: SafeArea(
        minimum: const EdgeInsets.only(top: 50,left: 25, right: 25),
        child: Column(
          children: [

            /// Password Reset
            const Text(' Password Reset email send'),

            /// Logo Banner
            Container(
              width:  double.infinity,
              height: 140,
              alignment: Alignment.center,
              color: Colors.grey,
              child: const Text('Banner/Logo'),
            ),
            const SizedBox(height: 25,),


            const SizedBox(height: 30,),

            Stack(
              alignment: Alignment.center,
              children: const [
                Icon(Icons.circle_outlined,size: 70,),
                Icon(Icons.done, size: 40,),

              ],
            ),



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
              width:  290,
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
              padding: const EdgeInsets.only(top: 20,left: 240),
              child: ElevatedButton(
                onPressed: (){

                 Navigator.pushReplacement(context, MaterialPageRoute(builder: (_)=> const Login() ));

                  },
                child: Container(
                  alignment: Alignment.center,
                  width: 60,
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: const Text('Login',style: TextStyle(fontSize: 18, ),),
                ),
              ),
            ),


          ],
        ),
      ),
    );
  }
}
