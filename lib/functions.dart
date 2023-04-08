import 'package:flutter/material.dart';

    Widget website(String str,String txt){
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


      Widget fieldPage(TextEditingController _controller,String txt,bool bln,{IconData? icn}){
  return     Padding(
    padding: const EdgeInsets.only(top: 10,bottom: 10),
    child: Container(
      decoration: BoxDecoration(
        color: Colors.amber[50],
        borderRadius: BorderRadius.circular(20)),
      child: TextField(
                        controller: _controller,
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


  Widget website_sign_in(String str,String txt){
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
  Widget listView_foods (String img,String txt,Color color,double size,Color color1,double scale,Size? fixed,double radius,{IconData? widget1}){
    return   OutlinedButton(
      style: ElevatedButton.styleFrom(
        fixedSize: fixed,
          shape: RoundedRectangleBorder(
         borderRadius: BorderRadius.circular(radius),
      ),
        shadowColor: Colors.red,
        backgroundColor: color1
      ),
                    onPressed: (() {
                      
                    }),
                    child: Column(
                      children: [
                        Image.asset(img,scale: scale,),
                        Text(txt,style: TextStyle(color: color,fontSize: size),),
                    Row(mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(widget1,color: Colors.yellow,),
                      Icon(widget1,color: Colors.yellow,),
                      Icon(widget1,color: Colors.yellow,),
                      Icon(widget1,color: Colors.yellow,),
                      // Icon(Icons.star_half,color: Colors.yellow,),
                    ],
                  ),
                      ],
                    ),
                  );
  }