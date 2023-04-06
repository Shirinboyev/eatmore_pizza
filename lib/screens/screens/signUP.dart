import 'package:eatmore_pizza/screens/Login.dart';
import 'package:flutter/material.dart';

import '../../main.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  Widget field(String txt,bool bln,{IconData? icn}){
  return     Padding(
    padding: const EdgeInsets.only(top: 20,bottom: 20),
    child: Container(
      decoration: BoxDecoration(
        color: Colors.amber[100],
        borderRadius: BorderRadius.circular(20)),
      child: TextField(
                    obscuringCharacter: '*',
                    obscureText: bln,
                    decoration: InputDecoration(
                      suffixIcon: IconButton(onPressed: (){},
                       icon: Icon(icn),),
                      labelText: txt,
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(20))
                    ),
                  ),
    ),
  );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
       actions: [
         Padding(
            padding:  EdgeInsets.only(right: 150,top:15),
            child: Text('Sign in',style: TextStyle(
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
          Navigator.pop(context,MaterialPageRoute(builder: ((context) => LoginPage())));
        }
        
        ),
       child:const Icon(Icons.arrow_back,color: Colors.black,)),),
       body:Padding(
         padding: const EdgeInsets.only(right: 20,left: 20,top: 20),
         child: Column(
            children: [
              field('Email Address',false),
              field('Password',true),
              field('Confirm Password',false)
               //   TextField(
              //   decoration: InputDecoration(
              //     fillColor: Colors.amber,
              //   labelText: 'Email Address',
              //     border: OutlineInputBorder(borderRadius: BorderRadius.circular(20))
              //   ),
              // ),
              //   SizedBox(height: 20,),
              //   TextField(
              //   obscuringCharacter: '*',
              //   obscureText: true,
              //   decoration: InputDecoration(
              //     suffixIcon: IconButton(onPressed: (){},
              //      icon: Icon(Icons.visibility_off),),
              //     labelText: 'Password',
              //     border: OutlineInputBorder(borderRadius: BorderRadius.circular(20))
              //   ),
              // ),
              //    SizedBox(height: 20,),
              //     Container(
                    
              //       child: TextField(
              //   obscuringCharacter: '*',
              //   obscureText: true,
              //   decoration: InputDecoration(
              //       suffixIcon: IconButton(onPressed: (){},
              //        icon: Icon(Icons.visibility_off),),
              //       labelText: 'Confirm Password',
              //       border: OutlineInputBorder(borderRadius: BorderRadius.circular(20))
              //   ),
              // ),
              //     ),
          ],
         ),
       ) ,
    );
  }
}