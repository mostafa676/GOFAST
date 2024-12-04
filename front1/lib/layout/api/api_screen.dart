import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:untitled3/layout/api/cubit_api.dart';
import 'package:untitled3/layout/api/status_api.dart';
import 'package:untitled3/modules/busnisse/bussinse.dart';
import 'package:untitled3/modules/search/search.dart';
import 'package:untitled3/modules/settings/settings.dart';
import 'package:untitled3/modules/sience/sience.dart';
import 'package:untitled3/modules/sport/sport.dart';
import 'package:untitled3/shared/network/local/cache_helper.dart';
import 'package:untitled3/shared/network/romote/dio.dart';

class ApiScreen extends StatelessWidget {


  @override
  Widget build(BuildContext context) {

    return /*BlocProvider(
      create: ( BuildContext context) => cubit_appi()..getBusnisse(),
      child:*/ BlocConsumer <cubit_appi, status_api>(
        listener: (BuildContext context, state) {  },
        builder: (BuildContext context,  state) {
          return  Scaffold(
              appBar: AppBar(

                title:    Text(' Api Screen'),
                actions: [
                  IconButton(icon:Icon(Icons.search_rounded),
                    onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder:(context)=> Search()) );
                  }
            ,),
               IconButton(
                   onPressed: (){
                     cubit_appi.get(context).changemode( );
                   },
                   icon:  cubit_appi.get(context).iconmode?Icon(Icons.dark_mode) :Icon(Icons.light_mode))
                ],
              ),






              bottomNavigationBar: BottomNavigationBar(
                  items :  cubit_appi.get(context).screens,
                  currentIndex: cubit_appi.get(context).currentIndex3,
                  onTap: (index){
                    cubit_appi.get(context).changescreennavigation(index);

                  }
              ),
            body: cubit_appi.get(context).screen[cubit_appi.get(context).currentIndex3],
          );
        },

     // ),5
    );
  }
}
