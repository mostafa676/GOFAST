 import 'package:flutter/material.dart';
import 'package:untitled3/modules/details/details.dart';
import 'package:untitled3/modules/testtt/test2.dart';
import 'package:untitled3/shared/components/componants.dart';

class test extends StatelessWidget {
  // const test({super.key});
  products pro = products(name1:'naya',price1:'59',image1: 'images/ii.jpg' );


   @override
   Widget build(BuildContext context) {
     pro.products_list();
     pro.print4();
     return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyan[90],
        title: Text('test'),
        elevation: 10,

      ), 
       body: Container(
         color: Colors.cyan[100],
         child: Padding(
           padding: const EdgeInsets.all(20.0),
           child: SingleChildScrollView(


                 child: ListView.separated(
                   physics: NeverScrollableScrollPhysics(),
                   shrinkWrap: true,
                   itemBuilder: (context, index) => GestureDetector(
                       onTap: (){
                         Navigator.push(context, MaterialPageRoute(builder:(context)=>details() ));
                       },
                       child: Center(child: product())),
                   separatorBuilder: (context, index ) =>
                      Padding(
                        padding: const EdgeInsets.all(3.0),
                        child: Container(

                          height: 2,
                          color: Colors.deepOrange,

                        ),
                      ),
                   itemCount: 15,),








































                  ),
           ),
       ),

       
     );
   }
 }
 products pro = products(name1:'naya',price1:'59',image1: 'images/ii.jpg' );
   Widget product ()  => Container(
   color: Colors.cyan[100],
   child: Row(
     crossAxisAlignment: CrossAxisAlignment.center,
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
     Column(
       crossAxisAlignment: CrossAxisAlignment.center,
       mainAxisAlignment: MainAxisAlignment.center,
       children :[
         CircleAvatar(
         radius: 50,
//Image('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRlndpwDalSNF8TzBG6T7kGv73l0IOReNJpKw&s')
         child: Image(image: AssetImage('assets/images/shopping.webp'),),
         ),
        SizedBox(
        height:  7.0,
         ),
      Text('name: xxxxxxx'),
       ]),
    ],
//assets/images/shopping.webp
   ),

 );