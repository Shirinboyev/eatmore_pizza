import 'package:eatmore_pizza/screens/Login.dart';
import'package:flutter/material.dart';
void main(){
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: HomePage(),
  ));
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Container(
        decoration: const BoxDecoration(
        image: DecorationImage(image: AssetImage('images/eatmore.png'),fit: BoxFit.fill)
          // gradient: LinearGradient(
          //   begin: Alignment.topLeft,
          //   end: Alignment.bottomRight,
          //   colors: [
          //   Color.fromARGB(255, 245, 11, 89),
          //   Color.fromARGB(255, 200, 197, 197),
          // ])
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50)
                  ),
                  minimumSize: Size(235, 70),
                //  fixedSize: Size(220, 105),
                backgroundColor: Color.fromARGB(255, 217, 45, 45)
                ),
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: ((context) => LoginPage())));
                }, 
              child:const Text('Get a mail'))
            ],
          ),
        ),
      ),
    );
  }
}