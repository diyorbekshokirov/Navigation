

import 'package:flutter/material.dart';
import 'package:navigator/task_one/pages/login_page.dart';

class Registr extends StatefulWidget {
  const Registr({Key? key}) : super(key: key);

  @override
  State<Registr> createState() => _RegistrState();
}

class _RegistrState extends State<Registr> {

  TextEditingController  password = TextEditingController();
  TextEditingController userName = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        minimum: const EdgeInsets.only(top: 50,left: 25, right: 25),
        child: Column(
          children: [

            /// Page Name
            const Text(' Registr'),

            /// Logo Banner
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
              child: const Text('Registr with us '),
            ),
            const SizedBox(height: 60,),


            Container(
              height: 70,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.grey.shade300,
              ),
              child:  TextField(
                controller: userName,
                style: const TextStyle(fontSize: 18,color: Colors.black),
                decoration: const InputDecoration(
                  border: InputBorder.none,
                  labelText: 'User name',
                  labelStyle: TextStyle(fontSize: 20,color: Colors.grey,),
                  prefixIcon: Icon(Icons.person,color: Colors.grey,),
                ),
              ),
            ),
            const SizedBox(height: 25,),
            /// Input password
            Container(
              height: 70,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.grey.shade300,
              ),
              child:  TextField(
                controller: password,
                style: const TextStyle(fontSize: 18,color: Colors.black),
                decoration: const InputDecoration(
                  border: InputBorder.none,
                  labelText: 'Password',
                  labelStyle: TextStyle(fontSize: 20,color: Colors.grey,),
                  prefixIcon: Icon(Icons.lock,color: Colors.grey,),
                ),
              ),
            ),
            const SizedBox(height: 25,),






            const SizedBox(height: 30,),

            /// go buton
            Padding(
              padding: const EdgeInsets.only(top: 20,left: 240),
              child: ElevatedButton(
                onPressed: (){
                  /// shatrt yoziladi

                    Navigator.pushReplacement(context, MaterialPageRoute(builder: (_) => const Login() ));

                },
                child: Container(
                  alignment: Alignment.center,
                  width: 85,
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: const Text('register',style: TextStyle(fontSize: 18, ),),
                ),
              ),
            ),

          ],
        ),
      ),
    );
  }
}
