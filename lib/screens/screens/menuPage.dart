import 'package:eatmore_pizza/functions.dart';
import 'package:flutter/material.dart';

class MenuPage extends StatefulWidget {
  const MenuPage({super.key});

  @override
  State<MenuPage> createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0.0,
          automaticallyImplyLeading: false,
          title: Icon(Icons.short_text_rounded,color: Colors.black,),
        actions: [
          CircleAvatar(
            backgroundImage: AssetImage('images/avatar.png'),
          )
        ],
        ),
        
      body:  Padding(
        padding: const EdgeInsets.only(left: 20,right: 20,top: 20),
        child: Column(
          children: [
            Row(
              children: [
                Column(
                children: [
                  Text('Choose the',style: TextStyle(fontSize: 18),),
                  Text('       Food you love',style: TextStyle(fontSize: 20),),
                ],
                )
              ],
            ),SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.only(top: 10,bottom: 10),
              child: Container(
        decoration: BoxDecoration(
          color: Colors.amber[50],
          borderRadius: BorderRadius.circular(20)),
        child: TextField(
                        decoration: InputDecoration(
                          labelText: 'Search',
                          border: OutlineInputBorder(borderRadius: BorderRadius.circular(20))
                        ),
                      ),
        ),
            ),
            SizedBox(height: 20,),
            Row(
              children: [
                Text('Catagory',style: TextStyle(fontSize: 25),),
              ],
            ),
            SizedBox(height: 30,),
            Expanded(
              flex: 2,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  listView_foods('images/chickend.png',
                  
                   'Chicken',
                    Colors.red, 
                    20,
                    Color.fromARGB(255, 240, 248, 163),
                   6.9,
                    Size(190, 160),
                    30,
                    ),
                    
                    SizedBox(width: 20,),
                         listView_foods('images/burger.png',
                   'Burder',
                    Colors.red, 
                    20,
                    Colors.white,
                   13,
                    Size(190, 160),
                    30,
                    ),SizedBox(width: 20,),
                         listView_foods('images/pizza.png',
                   'Pizza',
                    Colors.red, 
                    20,
                    Colors.white,
                   13,
                    Size(190, 160),
                    30,
                    ),
                ],
              )),            SizedBox(height: 30,),

                          Expanded(
              flex: 5,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  listView_foods('images/chicken1.png',
                   '\nChicken\n₱ 18\n',
                   Colors.white, 
                   30,
                   Color.fromARGB(255, 255, 64, 0),
                   13,
                   Size(230, 300),
                   40,
                  widget1: Icons.star
                      
                   ),
                     listView_foods('images/chicken1.png',
                   '\nChicken\n₱ 12\n ',
                   Colors.grey, 
                   30,
                   Colors.white,
                   13,
                   Size(230, 300),
                   40,
                  widget1: Icons.star
                      
                   ),
                ],
              )),
            
          ],
        ),
      ),  
      ),
      
    );
  }
}