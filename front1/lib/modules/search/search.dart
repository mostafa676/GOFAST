import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:untitled3/layout/api/cubit_api.dart';
import 'package:untitled3/layout/api/status_api.dart';
import 'package:untitled3/shared/components/componants.dart';

class Search extends StatelessWidget {

var text=TextEditingController();
var key23= GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return  BlocConsumer <cubit_appi, status_api>(
        listener: (BuildContext context, state) {  },
    builder: (BuildContext context,  state) {
      cubit_appi search2 = cubit_appi.get(context);
    return Scaffold(
    appBar:
    AppBar(

    ),
    body:
    Padding(
    padding: const EdgeInsets.all(8.0),
    child: Column(
    children: [

    Form(
    key: key23,
    child: fromfield(
    labelText: 'search',
    prefix: Icon(Icons.search) ,
    controler: text,
    inputType: TextInputType.text,
    border: OutlineInputBorder(),


    validator: (String? value) {
    if(value!.isEmpty){
    return 'please enter';
    }
    return null;
    },
    onChanged: (value){
      search2.search(value);
    }

    ),
    ),
      SizedBox(
        height:10.0,
      ),
      apilistforscreen(search2.search1),
    ],
    ),
    ),
    );
    },
    );

  }
}
