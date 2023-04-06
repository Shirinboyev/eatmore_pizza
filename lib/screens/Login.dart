import 'dart:ui';

import 'package:eatmore_pizza/main.dart';
import 'package:eatmore_pizza/screens/screens/forgetPage.dart';
import 'package:eatmore_pizza/screens/screens/signUP.dart';
import 'package:flutter/material.dart';
class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController _controller = TextEditingController();
  TextEditingController _controller1 = TextEditingController();
  @override 
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
       actions: [
         Padding(
            padding:  EdgeInsets.only(right: 150,top:15),
            child: Text('Log in',style: TextStyle(
              color: Colors.black,
              fontSize: 20
            ),),
          )
        ],
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
        title: TextButton(
           style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50)
                  ),
                  fixedSize: Size(30, 60),
                // backgroundColor: Color.fromARGB(255, 217, 45, 45)
                ),
          onPressed: (
        (){
          Navigator.pop(context,MaterialPageRoute(builder: ((context) => HomePage())));
        }
        
        ),
       child:const Icon(Icons.arrow_back,color: Colors.black,)),),
      body:Padding(
        padding: const EdgeInsets.only(right: 20,left: 20,top: 20),
        child: Column(
          children: [
            TextField(
              controller: _controller,
              decoration: InputDecoration(
                fillColor: Colors.amber,
              labelText: 'Email Address',
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(20))
              ),
            ),
            SizedBox(height: 20,),
              TextField(
              controller: _controller1,
              obscuringCharacter: '*',
              obscureText: true,
              decoration: InputDecoration(
                suffixIcon: IconButton(onPressed: (){},
                 icon: Icon(Icons.visibility_off),),
                labelText: 'Password',
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(20))
              ),
            ),
            // if(_controller == 0)
            Padding(
              padding: const EdgeInsets.only(right: 170),
              child: TextButton(onPressed: (){
                            if(_controller1 != 0){
                              Navigator.push(context, MaterialPageRoute(builder: ((context) => ForgetPage())));
                            }
              },
              
               child: Text('Forget Password?',style: TextStyle(
                color: Colors.red,fontSize: 16),)),
            ),
            SizedBox(height: 30,),
            ElevatedButton(
               style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)
                  ),
                  minimumSize: Size(320, 60),
                //  fixedSize: Size(220, 105),
                backgroundColor: Color.fromARGB(255, 255, 17, 0)
                ),
              onPressed: (){
                if(_controller1 != 0){
                Navigator.push(context, MaterialPageRoute(builder: ((context) => ForgetPage())));
                }
              }, 
            child: Text('Log in'),
            ),
            Row(
              children: [
                Text('Don`t have on account?'),
                TextButton(onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: ((context) => SignUpPage())));
                },
                 child: Text('Sign up',style: TextStyle(color: Colors.red),))
              ],
            )
          ],
        ),
      ) ,
    );
  }
}