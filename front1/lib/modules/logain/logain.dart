
import 'package:flutter/material.dart';
import 'package:untitled3/shared/components/componants.dart';

class logain extends StatefulWidget {

  @override
  State<logain> createState() => _logainState();
}

class _logainState extends State<logain> {
var emailAadress = TextEditingController();

var passWord = TextEditingController();

var  keyform = GlobalKey<FormState>();

bool ispassword = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.pink,
        ),

      body:


      Padding(
        padding: const EdgeInsets.all(20.0),
        child: Container(

          width: double.infinity,
          child: Center(
            child: SingleChildScrollView(
              child: Form(
              key: keyform,
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text( ' Logain',
                    style: TextStyle(
                      fontSize: 40.00,
                      fontWeight: FontWeight.bold,

                    ),
                    textAlign: TextAlign.start,),
                    SizedBox(
                  height: 20.0,
                ),
                   fromfield
                     (

                       labelText: 'email adress',
                       prefix: Icon(Icons.mail),
                       controler: emailAadress,
                       inputType: TextInputType.emailAddress,
                       border: OutlineInputBorder(),
                       validator: (value){
                         if( (value??"").isEmpty){
                           return 'please enter your email adress';
                         }

                       },

                   ),
                    SizedBox(
                      height: 20.0,
                    ),
                    fromfield(
                        labelText: ' passWord',
                        prefix:  Icon( Icons.lock),
                      hitOrNot:  ispassword,
                      functionbutton: (){
                          setState(() {


                         ispassword=!ispassword;
                                       });     },
                        suffix: ispassword? Icons.visibility: Icons.visibility_off,
                        controler: passWord,
                        inputType: TextInputType.number,

                        border:OutlineInputBorder() ,
                        validator:   (value){
              if( (value??"").isEmpty){
              return 'please entre your password';
              }

              },
                    ),

                    SizedBox(
                      height: 20.0,
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    Button(
                        width: double.infinity,
                        color: Colors.pink,
                        radius: 10.0,
                        function: (){
        if( keyform.currentState!.validate()) {
         print(emailAadress.text);
           print(passWord.text);
         };

  },
                        text: 'logain'
                    ),
                    Container(

                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                      Text(' if you don \' t have acount') ,
                          SizedBox(
                            width: 20.0,
                          ),
                          TextButton(onPressed: (){
                      print('register');
                          }, child: Text('rigester',style: TextStyle(color: Colors.blueAccent),textAlign: TextAlign.center,),),
                        ],
                      ),
                    )
                    ],
                    ),
              ),
            ),
          ),
    ),
    )






    );
  }
}
