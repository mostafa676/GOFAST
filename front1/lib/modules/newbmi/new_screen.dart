
import 'package:flutter/material.dart';
import 'package:untitled3/modules/result/result_screen.dart';

class new_screen extends StatefulWidget {


  @override
  State<new_screen> createState() => _newscreenState();
}

class _newscreenState extends State<new_screen> {
  bool ll= true;
  bool color = false;
  double hie = 120;
  int we = 60;
  int age = 28;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pink,
        titleSpacing: 50.0,
        title:  Text('BMI',style:
        TextStyle(
          fontSize: 30.0,
        ),),
      ),
    body: Container(
      color: Colors.black,
      child: Column(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [

                     Expanded(
                       child:  GestureDetector(
                         onTap:  (){
                           setState(() {
                             ll = false;
                            color= false;
                           });

                         },
                         child: Container(
                           decoration: BoxDecoration(
                             borderRadius: BorderRadius.circular(20.0),
                         color:  ll? Colors.pink : (color ? Colors.pink: Colors.blue),
                           ),

                           child: Column(
                            children: [
                              SizedBox(
                                height: 10.0,
                              ),
                              Image(image: AssetImage('images/ii.jpg')),
                              SizedBox(
                                height: 5.0,                           ),
                              Text('MALE',
                                style: TextStyle(
                                  fontSize: 30.0,
                                  fontWeight: FontWeight.bold,
                                ),)

                            ],
                                             ),
                         ),
                       ),
                     ),
                  SizedBox(
                    width: 10.0,
                  ),
                  Expanded(
                    child: GestureDetector(
                      onTap: (){
                        setState(() {
                          ll = false;
                          color = true;
                        });

                      },
                      child: Container(

                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20.0),
                           color:  ll ? Colors.pink: (color? Colors.blue : Colors.pink) ,
                        ),
                        child: Column(
                          children: [
                            SizedBox(
                              height: 10.0,
                            ),
                            Icon(Icons.female,size: 120.0,),
                            SizedBox(
                              height: 5.0,                           ),
                            Text('FEMALE',
                              style: TextStyle(
                                fontSize: 30.0,
                                fontWeight: FontWeight.bold,
                              ),)

                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 10.0,
                ),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.0),
                    color: Colors.pink,
                  ),
                  child: Center(
                    child: Column(
                      children: [
                        Text('HEIGHT',
                        style:
                          TextStyle(
                            color: Colors.black,
                            fontSize: 25.0,
                            fontWeight: FontWeight.bold,
                          ),),
                        SizedBox(
                          height: 5.0,
                        ),

                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.baseline,
                          textBaseline: TextBaseline.alphabetic,
                          children: [
                            Text('${hie.round()}',
                              style:
                              TextStyle(
                                color: Colors.black,
                                fontSize: 40.0,
                                fontWeight: FontWeight.bold,
                              ),),
                            Text('cm',
                              style:
                              TextStyle(
                                color: Colors.black,
                                fontSize: 25.0,
                                fontWeight: FontWeight.bold,
                              ),),
                          ],
                        ),
                        Slider(
                            value : hie,
                            max: 190,
                            min: 80,
                             onChanged:(value){
                              setState(() {
                            hie = value;
                              });

                             }),
                      ],
                    ),
                  ),
                ),
              )),
          Expanded(
              child:
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
             children: [
               Expanded(
                 child: Container(
                   decoration: BoxDecoration(
                     borderRadius: BorderRadius.circular(20.0),
                     color: Colors.pink,
                   ),
                   child: Column(
                     children: [
                       Text('WEIGHT',style:
                         TextStyle(
                           color: Colors.black,
                           fontWeight: FontWeight.bold,
                           fontSize: 25.0,

                         ),),
                       Text('${we}',style:
                       TextStyle(
                         color: Colors.black,
                         fontWeight: FontWeight.bold,
                         fontSize: 45.0,

                       ),),
                       Row(
                         mainAxisAlignment: MainAxisAlignment.center,
                         children: [
                           FloatingActionButton(onPressed: (){
                             setState(() {
                               we--;
                             });
                           },
                               shape: CircleBorder(),
                               backgroundColor: Colors.grey,
                               child: Text('-',style: TextStyle(
                                 color: Colors.white,
                                 fontSize: 40.0,
                                 fontWeight: FontWeight.bold,
                               ),)),
                           SizedBox(
                             width: 10.0,
                           ),
                           FloatingActionButton(onPressed: (){
                             setState(() {
                               we++;
                             });
                           },
                               shape: CircleBorder(),
                               backgroundColor: Colors.grey,
                           child: Text('+',style: TextStyle(
                             color: Colors.white,
                             fontSize: 40.0,
                             fontWeight: FontWeight.bold,
                           ),)),

                         ],
                       ),
                     ],
                   ),
                 ),
               ),
               SizedBox(
                 width: 10.0,
               ),
               Expanded(
                 child: Container(
                   decoration: BoxDecoration(
                     borderRadius: BorderRadius.circular(20.0),
                     color: Colors.pink,
                   ),
                   child: Column(
                     children: [
                       Text('AGE',style:
                       TextStyle(
                         color: Colors.black,
                         fontWeight: FontWeight.bold,
                         fontSize: 25.0,

                       ),),
                       Text('${age}',style:
                       TextStyle(
                         color: Colors.black,
                         fontWeight: FontWeight.bold,
                         fontSize: 45.0,

                       ),),
                       Row(
                         mainAxisAlignment: MainAxisAlignment.center,
                         children: [
                           FloatingActionButton(onPressed: (){
                             setState(() {
                               age--;
                             });

                           },
                               shape: CircleBorder(),
                               backgroundColor: Colors.grey,
                               child: Text('-',style: TextStyle(
                                 color: Colors.white,
                                 fontSize: 40.0,
                                 fontWeight: FontWeight.bold,
                               ),)),
                           SizedBox(
                             width: 10.0,
                           ),
                           FloatingActionButton(onPressed: (){
                             setState(() {
                               age++;
                             });
                           },
                               shape: CircleBorder(),
                               backgroundColor: Colors.grey,
                               child: Text('+',style: TextStyle(
                                 color: Colors.white,
                                 fontSize: 40.0,
                                 fontWeight: FontWeight.bold,
                               ),)),

                         ],
                       ),
                     ],
                   ),
                 ),
               ),
             ],
            ),
          ),),
          Container(
            height: 50.0,
            color: Colors.pink,
            child: Row(
                 mainAxisAlignment: MainAxisAlignment.center ,
              children: [
               GestureDetector(
                 onTap: (){
             Navigator.push(context, MaterialPageRoute(builder: (context)=> resultScreen( isMale: color,hieth:  hie.round(),weith: we,age: age),),) ;
    },
             child:   Text('calculate',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 30.0,
                    fontWeight: FontWeight.bold,

                  ),
                textAlign: TextAlign.center,),
               ),
              ],
            ),
          ),

      ],
      ),
    ),
    );
  }
}
