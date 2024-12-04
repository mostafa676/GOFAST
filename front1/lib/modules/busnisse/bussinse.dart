import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:untitled3/layout/api/cubit_api.dart';
import 'package:untitled3/layout/api/status_api.dart';
import 'package:untitled3/shared/components/componants.dart';

class busnisseScreen extends StatelessWidget {


  @override
  Widget build(BuildContext context) {

    return
      BlocConsumer <cubit_appi,status_api>(

          listener: (context,state) { },
          builder: (context,state) {
    List<dynamic> mainlist = cubit_appi.get(context).busnisse;
             return apilistforscreen(mainlist);
          });
    /* Center(
      child: Container(

        child: Text(' Busnisse Screen',
          style: TextStyle(
            fontSize: 30.0,
            fontWeight: FontWeight.bold,
          ),
         ),



      ),
    );*/
  }
}