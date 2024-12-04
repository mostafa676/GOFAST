
import 'package:flutter/material.dart';

class Massengerdesain extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(

 appBar: AppBar(
   title: Row (
     children: [CircleAvatar(
     radius: 30.0,
     backgroundImage: NetworkImage(
         'https://static.vecteezy.com/system/resources/previews/026/800/471/non_2x/ai-generated-watercolor-flower-watercolor-beautiful-flawer-watercolor-free-png.png',
     ),
   )  ,
       SizedBox(
         width: 20.0,
       ),
Text('chats',style: TextStyle(
  fontSize: 30.0,
  fontWeight: FontWeight.bold,
),
),


 ],),
 actions: [ IconButton(onPressed: (){}, icon: CircleAvatar(
radius: 15.0,
      child: Icon(Icons.camera_alt,color: Colors.white,),
   backgroundColor: Colors.blue, ),
 ),
SizedBox(
  width: 3.0,
),
   IconButton(onPressed: (){}, icon: CircleAvatar(
     radius:15.0 ,
     child: Icon(Icons.edit,color: Colors.white,),
   backgroundColor: Colors.blue, ),
   ),
 ],),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Column(
          
            children: [
              Container(
          
                decoration: BoxDecoration(
                 borderRadius: BorderRadius.circular(7.0),
                  color: Colors.grey[300],
                ),
                child: Row(
                  children: [
                    IconButton(onPressed: (){}, icon:Icon(Icons.search) ,),
                    SizedBox(
                      width:20.0  ,
                    ),
                    Text('Search',
                      style: TextStyle(fontSize: 20.0,fontWeight: FontWeight.bold),),
          
                  ],
                ),
              ),
             SizedBox(
               height: 10.0,
             ),
             Container(
               height: 150.0,
               child: ListView.separated(
                 scrollDirection: Axis.horizontal,
                   itemBuilder: (context, index) => buildStorys(),
                    separatorBuilder: (context , index) => SizedBox(
                      width: 5.0,
                    ),
                 itemCount: 6,
                   ),
             ),
              ListView.separated(
          physics: NeverScrollableScrollPhysics(),
               shrinkWrap: true,
                  itemBuilder: (context, index) => buildChats(),
              separatorBuilder: (context, index ) => SizedBox(
                height: 5.0,
              ),
                  itemCount: 10,),
          
          
            ],
          ),
        ),

      ),


    );
  }


  Widget buildStorys( ) =>    Container(
    width: 60.0,
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 15.0),
        Stack(
          alignment: AlignmentDirectional.bottomEnd,
          children: [

            CircleAvatar(
              radius: 30.0,
              backgroundImage: NetworkImage(
                'https://static.vecteezy.com/system/resources/previews/026/800/471/non_2x/ai-generated-watercolor-flower-watercolor-beautiful-flawer-watercolor-free-png.png',
              ),
            ),
            CircleAvatar(
              radius: 5.0,
              backgroundColor: Colors.red,
            )
          ],
        )  ,
        SizedBox(height: 5.0),
        Text('naya amin zodeh',maxLines: 2,overflow:TextOverflow.ellipsis ,),

      ],

    ),
  );
  Widget buildChats ( ) =>    Row(

    children: [

      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 15.0),
          Stack(
            alignment: AlignmentDirectional.bottomEnd,
            children: [

              CircleAvatar(
                radius: 30.0,
                backgroundImage: NetworkImage(
                  'https://static.vecteezy.com/system/resources/previews/026/800/471/non_2x/ai-generated-watercolor-flower-watercolor-beautiful-flawer-watercolor-free-png.png',
                ),
              ),
              CircleAvatar(
                radius: 5.0,
                backgroundColor: Colors.red,
              )
            ],
          )  ,

        ],


      ),
      SizedBox(
        width: 10.0,
      ),

      Expanded(
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'naya amin zodeh',style: TextStyle(
                fontSize: 20.0,fontWeight: FontWeight.bold,
              ),textAlign: TextAlign.start,maxLines: 1,overflow:TextOverflow.ellipsis,),
              SizedBox(
                height: 6.0,
              ),
              Row(
                children: [
                  Expanded(
                    child: Text('hi my name is naya njnkkkkkknnnnnnnnnnnnnnnnnnnnnnnnnnnnnnjjjjjjjjjjjjjjjjjjjjjjj nnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnn',style: TextStyle(
                      fontSize: 10.0,fontWeight: FontWeight.bold,),maxLines: 2,overflow:TextOverflow.ellipsis,),
                  ),
                  SizedBox(
                    width: 10.0,
                  ),
                  Text('3:00pm'),
                ],
              ),
            ]

        ),
      ),
    ],
  );

}
