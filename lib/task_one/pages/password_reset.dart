
import 'package:flutter/material.dart';
import 'package:navigator/task_one/pages/password_reset_email_send.dart';
import 'package:navigator/task_one/pages/re_enter_email_addres.dart';

class PasswordReset extends StatefulWidget {
  const PasswordReset({Key? key}) : super(key: key);

  @override
  State<PasswordReset> createState() => _PasswordResetState();
}

class _PasswordResetState extends State<PasswordReset> {
  TextEditingController email = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: SafeArea(
        minimum: const EdgeInsets.only(top: 50,left: 25, right: 25),
        child: Column(
          children: [

            /// Page Name
            const Text(' Password Reset Page'),


            Container(
              width:  double.infinity,
              height: 140,
              alignment: Alignment.center,
              color: Colors.grey,
              child: const Text('Banner/Logo'),
            ),
            const SizedBox(height: 25,),

            Container(
              width:  double.infinity,
              height: 60,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black),
              ),
              child: const Text('Password Resset'),
            ),
            const SizedBox(height: 60,),




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

            /// input email
            Container(
              height: 70,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.grey.shade300,
              ),
              child:  TextField(
                controller: email,
                style: const TextStyle(fontSize: 18,color: Colors.black),
                decoration: const InputDecoration(
                  border: InputBorder.none,
                  labelText: 'Email',
                  labelStyle: TextStyle(fontSize: 20,color: Colors.grey,),
                  prefixIcon: Icon(Icons.person,color: Colors.grey,),
                ),
              ),
            ),
            const SizedBox(height: 30,),

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
                  /// shatrt yoziladi
                  if(email.text.trim().contains(RegExp(r'^([a-zA-Z\d._%+-]+)@([a-zA-Z\d.-]+\.[a-zA-Z]{2,})$')) ){
                    Navigator.pushReplacement(context, MaterialPageRoute(builder: (_) => const PasswordResetEmail() ));
                  }else{
                    Navigator.pushReplacement(context, MaterialPageRoute(builder: (_) => const ReEnterEmailAdres() ));

                  }


                },
                child: Container(
                  alignment: Alignment.center,
                  width: 85,
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: const Text('Send temporary\n Password',style: TextStyle(fontSize: 18, ),),
                ),
              ),
            ),


          ],
        ),
      ),
    );
  }
}
