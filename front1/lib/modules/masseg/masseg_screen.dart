
import 'package:flutter/material.dart';
import 'package:untitled3/models/user/user.dart';

class masseg_screen extends StatelessWidget {
List < username>  user =[
username(
  id: 1,
  name: 'naya amin zodeh',
  number: '12334555',
),
  username(
    id: 2,
    name: 'tala amin zodeh',
    number: '1299999',
  ),
  username(
    id: 3,
    name: 'ali amin zodeh',
    number: '12888888',
  ),
  username(
    id: 4,
    name: 'karim amin zodeh',
    number: '123444444',
  ),
  username(
    id: 5,
    name: ' amin zodeh',
    number: '120000000',
  ),
  username(
    id: 6,
    name: ' Ghada abbass',
    number: '11111111111111',
  ),
  username(
    id: 1,
    name: 'naya amin zodeh',
    number: '12334555',
  ),
  username(
    id: 2,
    name: 'tala amin zodeh',
    number: '1299999',
  ),
  username(
    id: 3,
    name: 'ali amin zodeh',
    number: '12888888',
  ),
  username(
    id: 4,
    name: 'karim amin zodeh',
    number: '123444444',
  ),
  username(
    id: 5,
    name: ' amin zodeh',
    number: '120000000',
  ),
  username(
    id: 6,
    name: ' Ghada abbass',
    number: '11111111111111',
  ),
];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.phone, size: 30.0,),
        backgroundColor: Colors.cyan,
        titleSpacing: 25.0,
        title: Text('Phone',
          style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold),),
        actions: [
          IconButton(onPressed: () {},
            icon: Icon(Icons.search, size: 30.0, color: Colors.black,),),
          IconButton(onPressed: () {},
            icon: Icon(
              Icons.keyboard_voice_rounded, size: 30.0, color: Colors.black,),),

        ],
      ),
      body:Padding(
        padding: const EdgeInsets.all(10.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25.0),
                  color: Colors.grey[500],
                ),
                height: 40.0,
          
                child: Row(
                    children: [
                      IconButton(onPressed: () {},
                          icon: Icon(
                            Icons.search, color: Colors.black, size: 20.0,)),
                    ]
                ),),
              SizedBox(
                height: 10.0,
              ),
          ListView.separated(
            physics: NeverScrollableScrollPhysics() ,
              shrinkWrap: true,
              itemBuilder: (BuildContext, index) => buildcontects(user[index]) ,
              separatorBuilder:  ( BuildContext, index) => Padding(
                padding: const EdgeInsets.all(5.0),
                child: Container(
                  color: Colors.red[800],
                  height: 3.0,
                ),
              ),
              itemCount: user.length),
          
            ],
                 ),
        ),
      ),
    );
  }

  Widget buildcontects( username r) =>
      Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CircleAvatar(
            radius: 40.0,
           backgroundColor: Colors.blue[100],
            child: 
              Text('${ r.id}'),
          ),
          SizedBox(
            width: 20.0,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              Text(' ${ r.name}', style: TextStyle(color: Colors.black,
                  fontSize: 26.0,
                  fontWeight: FontWeight.bold),),
              SizedBox(
                height: 20.0,
              ),
              Text('${ r.number}', style: TextStyle(color: Colors.grey[700],
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold),),
            ],
          ),

        ],
      );



}