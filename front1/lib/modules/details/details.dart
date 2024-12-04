import 'package:flutter/material.dart';

class details extends StatelessWidget {
  const details({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar: AppBar(
     title: Text('details',
       style: TextStyle(
       fontWeight: FontWeight.bold
     ),),
      elevation: 10,
    ),
      body: Center(
        child: Container(
         
          width: double.infinity,
          color: Colors.cyan[100],
          child:Column(
            mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 10.0,
              ),
              CircleAvatar(
                radius: 70,

                child: Image(image: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRlndpwDalSNF8TzBG6T7kGv73l0IOReNJpKw&s'),),
              ),
          SizedBox(
            height: 15.0,
          ),
          Text('price: 30 ', style: TextStyle(
              fontWeight: FontWeight.bold),),
              Text('name : nnnn ', style: TextStyle(
                  fontWeight: FontWeight.bold),),
              Text('date: 2000,9,9 ' ,style: TextStyle(
                  fontWeight: FontWeight.bold),),
            ]  ),),
      )
    );
  }
}
