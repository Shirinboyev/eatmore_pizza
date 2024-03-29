import 'package:eatmore_pizza/main.dart';
import 'package:eatmore_pizza/screens/screens/forgetPage.dart';
import 'package:eatmore_pizza/screens/screens/menuPage.dart';
import 'package:eatmore_pizza/screens/screens/signIn.dart';
import 'package:flutter/material.dart';

import '../functions.dart';
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
        child: ListView(
          children:[ Column(
            children: [
            fieldPage(_controller,'Email Address', false,),
            fieldPage(_controller1,'Password', true,icn: Icons.visibility_off_outlined),
            
              // if(_controller == 0)
              Padding(
                padding: const EdgeInsets.only(right: 170),
                child: TextButton(onPressed: (){
                              if(_controller1.text.length > 7){
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
                  if(_controller1.text.length > 7){
                  Navigator.push(context, MaterialPageRoute(builder: ((context) => MenuPage())));
                  }
                }, 
              child: Text('Log in'),
              ),
              Row(mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Don`t have on account?'),
                  TextButton(onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: ((context) => SignUpPage())));
                  },
                   child: Text('Sign up',style: TextStyle(color: Colors.red,fontSize: 14),))
                ],
              ),
              SizedBox(height: 20,),
              Row(mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                     width: 140,
                    height: 1.3,  
                    color: Colors.grey,
                  ),
                  Text(' Or ',style: TextStyle(fontSize: 17),),
                  Container(    
                    width: 140,
                    height: 1.3,   
                 color: Colors.grey,
                  ),
                ],
              ),
            SizedBox(height: 30,),
            website_sign_in('images/google.png','Sign in with Goole'),
            website_sign_in('images/fasebook.png','Sign in with Facebook'),
            ],
          ),]
        ),
      ) ,
    );
  }
}