import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:untitled3/layout/api/status_api.dart';
import 'package:untitled3/modules/busnisse/bussinse.dart';
import 'package:untitled3/modules/settings/settings.dart';
import 'package:untitled3/modules/sience/sience.dart';
import 'package:untitled3/modules/sport/sport.dart';
import 'package:untitled3/shared/cubit_navigationbar/states_navigationbar.dart';
import 'package:untitled3/shared/network/local/cache_helper.dart';
import 'package:untitled3/shared/network/romote/dio.dart';

class cubit_appi extends Cubit <status_api >{
  cubit_appi ( ): super ( intial_status());
  static cubit_appi get (context) => BlocProvider.of(context);
  int currentIndex3 =0;
  List< BottomNavigationBarItem> screens = [
    BottomNavigationBarItem(
        icon: Icon(Icons.business),
      label: 'Busnisse',

    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.sports_baseball_rounded),
      label: 'Sport',

    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.science),
      label: ' Science',

    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.settings),
      label: 'Settings',

    )
];
  List <Widget> screen=[
    busnisseScreen(),
    SportScreen(),
    SienceScreen(),
    SettingsScreen(),
  ];



  void changescreennavigation (int cuurent){
    currentIndex3=cuurent;
    if(currentIndex3 ==1){
      getsport();
    }
    if(currentIndex3==2){
      getscience();
      emit(changescreen_status());
    }
    emit(changescreen_status());

  }


   List<dynamic> busnisse=[];
   List<dynamic> sport=[];
   List<dynamic> science=[];

  void getBusnisse() {
    emit(busnisse_status());
    DioHelper.getData(
      url: 'v2/top-headlines',
      query: {
        'country': 'us',
        'category': 'business',
        'apiKey': '8dad5c519e5d47ee8aa3ff6cb8005377',


      },
    ).then((onValue) {
      emit(getdata_status());

      busnisse = onValue?.data['articles'];


    }).catchError((onError) {
      emit(error_status());
      print(onError.toString());
    });
  }
  void getsport() {
    emit(sport_status());
    if(sport.length==0){
    DioHelper.getData(
      url: 'v2/everything',
      query: {
        'q': 'apple',
        'from': '2024-10-20',
        'to': '2024-10-20',
        'sortBy': 'popularity',
        'apiKey': '8dad5c519e5d47ee8aa3ff6cb8005377',


      },
    ).then((onValue) {
      emit(getdata_status());

      sport = onValue?.data['articles'];


    }).catchError((onError) {
      emit(error_status());
      print(onError.toString());
    } );}
    else{
      emit(sport_status());
    }
  }
  void getscience() {
    emit(science_status());
    if (science.length==0){
    DioHelper.getData(
      url: 'v2/everything',
      query: {
        'q': 'tesla',
        'from': '2024-09-21',
        'sortBy': 'publishedAt',
        'apiKey': '8dad5c519e5d47ee8aa3ff6cb8005377',


      },
    ).then((onValue) {
      emit(getdata_status());

      science = onValue?.data['articles'];


    }).catchError((onError) {
      emit(error_status());
      print(onError.toString());
    });}
    else{
      emit(science_status());
    }
  }
   bool  colorthemmode= true;
  bool iconmode = true;
  void changemode ( {bool ? frame }){
    emit(thememode_status());
    if(frame != null){
      colorthemmode=frame;
    }
    else{
      colorthemmode=!colorthemmode;
      cache_helper().put(key: 'dark', value: colorthemmode );
    }


    emit(thememode_status());
    iconmode =!iconmode;
    emit(iconmode_status());
  }
   List <dynamic>  search1=[];
void search (String value){
     search1 =[];
  emit(search_status());
  DioHelper.getData(
      url: 'v2/everything',
      query: {
      'q': '${value}',
      'apiKey': '8dad5c519e5d47ee8aa3ff6cb8005377',

      },).then((onValue){
    search1=onValue?.data['articles'];
    emit(searchgetdata_status());
  }).catchError((onError){
    emit(error_status());
    });
}
}