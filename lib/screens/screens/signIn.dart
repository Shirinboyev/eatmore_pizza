import 'package:eatmore_pizza/screens/Login.dart';
import 'package:eatmore_pizza/screens/screens/menuPage.dart';
import 'package:flutter/material.dart';
import '../../main.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

  TextEditingController _controller = TextEditingController();
  TextEditingController _controller1 = TextEditingController();
  TextEditingController _controller2 = TextEditingController();

class _SignUpPageState extends State<SignUpPage> {
    Widget ele(String str,String txt){
    return    Padding(
      padding: const EdgeInsets.only(top: 25,right: 13,left: 13),
      child: OutlinedButton(onPressed: (){},
            child: ListTile(
              leading: Padding(
                padding: const EdgeInsets.all(12),
                child: Image.asset(str),
              ),
              title: Text(txt),
            )),
    );
  }
  Widget field(TextEditingController controller,String txt,bool bln,{IconData? icn}){
  return     Padding(
    padding: const EdgeInsets.only(top: 10,bottom: 10),
    child: Container(
      decoration: BoxDecoration(
        color: Colors.amber[50],
        borderRadius: BorderRadius.circular(20)),
      child: TextField(
        controller: controller,
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
              field(_controller,'Email Address',false),
              field(_controller1,'Password',true,icn: Icons.visibility_off_outlined),
              field(_controller2,'Confirm Password',false,icn: Icons.visibility_off_outlined),
              SizedBox(height: 20),
                ElevatedButton(
                   style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)
                      ),
                      // minimumSize: Size(500, 60),
                     fixedSize: Size(330, 60),
                    backgroundColor: Color.fromARGB(255, 255, 17, 0)
                    ),
                   onPressed: (){
                  if(_controller1.text.length > 7){
                  Navigator.push(context, MaterialPageRoute(builder: ((context) => MenuPage())));

                  }
                  print(_controller1.text);
                },
                child: Text('Sign in'),
                ),
                  SizedBox(height: 40,),
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
            ele('images/google.png','Sign in with Goole'),
            ele('images/fasebook.png','Sign in with Facebook'),
          ],
         ),
       ) ,
    );
  }
}