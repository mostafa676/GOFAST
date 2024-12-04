
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
return Scaffold(
  appBar: AppBar(

  backgroundColor: Colors.tealAccent,
  shadowColor: Colors.teal,
  elevation: 25.00,

  leading: Icon(
    Icons.menu,
  ),
  title:Text('naya'),
  actions: [  IconButton(onPressed: (){
    print('naya love jude but he is shit because he likes kim');
  }, icon:Icon(
    Icons.notification_important,
  ), ),
IconButton(onPressed: naya, icon:  Icon(
  Icons.search_rounded,
),)

  ]



),

    body:
        Container(
          width: double.infinity,
        //  color: Colors.cyan,
          child: Column(
              mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,

            children: [
                Container(
                  width: 200,
                //  color: Colors.pink,
                 decoration: BoxDecoration(
                     borderRadius: BorderRadiusDirectional.only(
                       topStart: Radius.circular(20.00,),
                     ),

          ),
                  clipBehavior: Clip.antiAliasWithSaveLayer,

                  child: Stack(


                    alignment: Alignment.bottomCenter,
                    children: [

                      Image(image:NetworkImage(
                                 'https://static.vecteezy.com/system/resources/previews/026/800/471/non_2x/ai-generated-watercolor-flower-watercolor-beautiful-flawer-watercolor-free-png.png'
                      ), fit: BoxFit.cover,


                      ),
                       Padding(
                         padding: const EdgeInsets.symmetric(
                           vertical: 5.00,

                         ),
                         child: Text(' hi naya ',
                                 style: TextStyle(
                                   fontSize: 25.0,
                                   fontWeight:FontWeight.bold,
                                   backgroundColor: Colors.purple.withOpacity(0.6),


                                 ),
                                  textAlign:TextAlign.center ,),
                       ),
                    ],
                  ),
                ),],),
        ),
        );





  }

void naya(){
    print (' naya love luka ');
}


}