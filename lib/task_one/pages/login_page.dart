import 'package:flutter/material.dart';
import 'package:navigator/task_one/pages/retry_login.dart';
import 'package:navigator/task_one/pages/view_accounts.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController  password = TextEditingController();
  TextEditingController userName = TextEditingController();
  bool isCorrect(TextEditingController password, TextEditingController userName){
    if('1234' == password.text.trim()&& 'Diyorbek' == userName.text.trim()) {
      return true;
    }
    return false;
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        minimum: const EdgeInsets.only(top: 150,left: 20,right: 20),
        child: Column(
          children: [
            /// page name
            const Text('Login page'),
            /// logo
            Container(
              alignment: Alignment.center,
              height: 250,
              width: double.infinity,
              color: Colors.grey,
              child: const Text('Logo',style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),)
            ),

            const SizedBox(height: 40,),

            /// input User name
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
                  labelText: 'UserName',
                  labelStyle: TextStyle(fontSize: 20,color: Colors.grey,),
                  prefixIcon: Icon(Icons.person,color: Colors.grey,),
                ),
              ),
            ),

            const SizedBox(height: 20,),

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

            /// button go
            Padding(
                padding: const EdgeInsets.only(top: 30,left: 250),
              child: ElevatedButton(
                onPressed: (){
                   if(isCorrect(password,userName)){
                      Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (_) =>const ViewAccount() ));
                   }
                   else{
                     Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (_) =>const RetryLogin() ));
                   }
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
