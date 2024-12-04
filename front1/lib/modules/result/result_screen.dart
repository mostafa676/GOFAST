
import 'package:flutter/material.dart';

class resultScreen extends StatelessWidget {
 final bool isMale ;
  final int hieth;
  final int weith;
 final  int age;
 resultScreen({
    required this.isMale,
     required  this.hieth,
     required this.weith,
   required this.age,

});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
  appBar: AppBar(
    backgroundColor: Colors.cyan,
    leading: IconButton(
      onPressed: (){
        Navigator.pop(context);
      },
        icon:Icon(Icons.arrow_back) ),
  ),
      body:
          Center(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
              children: [
                  Text (  '${isMale?'female':'male'}'  ,
                    style: TextStyle(
                    fontSize: 30.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),  ),
                  Text('${hieth}', style: TextStyle(
                    fontSize: 30.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),),
                  Text('${weith}', style: TextStyle(
                    fontSize: 30.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),),
                 Text('${age}', style: TextStyle(
                   fontSize: 30.0,
                   fontWeight: FontWeight.bold,
                   color: Colors.black,
                 ),),
              ],  ),
          ),);
  }
}
