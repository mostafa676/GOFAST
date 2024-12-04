
import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sqflite/sqflite.dart';

import 'package:untitled3/modules/navigationbar_archived/archived.dart';
import 'package:untitled3/modules/navigationbar_done/done.dart';
import 'package:untitled3/modules/navigationbar_tasks/tasks.dart';
import 'package:untitled3/shared/cubit_navigationbar/states_navigationbar.dart';



class cubit_bar extends Cubit<states_bar> {
   cubit_bar () : super(Initial_bar());
 // cubit_bar() : super(Initial_bar());
  static cubit_bar get(context) => BlocProvider.of(context);
  int currenstate = 0;
  List<Widget> body = [
    tasks(),
    done(),
    archived(),
  ];
  List<String> titles = [
    'Tasks',
    'Done',
    'Archived'
  ];
  void screen (int index){
    currenstate= index;
    emit(screen_state());
  }

List<Map> tasks1 = [] ;
  List<Map> done2 = [] ;
   List<Map> archived3 = [] ;
   late Database database ;
void CreatDataBase () {
   openDatabase(
      'todo.db',
      version:1,
      onCreate:(database,version)async {
        print('create done');
        await  database.execute('CREATE TABLE tasks( id INTEGER PRIMARY KEY ,title TEXT, date TEXT, time TEXT, status TEXT)').then((onValue){
          print('tabel done');
        }).catchError((onError){
          print(onError);
        });
      },
      onOpen: (database){
getDataBase(database);
        print('open done ');
      }
  ).then((onValue)
   {

   database= onValue;
   emit(creat_state());
   }
   );

}

  InsertDataBase( {
  required title,
  required date,
  required time,
} ) async {
       await database.transaction((txn) async {
    txn.rawInsert('INSERT INTO tasks(title, date, time, status)VALUES("${title}","${date}","${time}","new")'
    ).then((value) {
      print('insert done');
      emit(insert_state());

      getDataBase(database);
    }).catchError((onError) {
      print('${onError} naya print this');
    });
  }  );

}
 void  getDataBase(database) {
  tasks1 =[];
  done2 =[];
  archived3 =[];
   database.rawQuery('SELECT * FROM tasks').then((onvalue){
     onvalue.forEach((element){
      if(element['status']=='new'){
        tasks1.add(element);
      }
      else if( element['status']=='done'){
        done2.add(element);
      }
      else archived3.add(element);
     });
   });
   emit(get_state());
}
void updatedata ({
     required String status,
  required int id,
}){

  database.rawUpdate('UPDATE  tasks SET status = ? WHERE id = ? ',
  ['${status}',id]).then((onValue){
getDataBase(database);
    emit(update_state());
  });

}
void deletdata ({
     required id,
}){
  database.rawDelete('DELETE FROM tasks WHERE id= ? ',[id]).then((onValue)
      {
       getDataBase(database) ;
       emit(delete_state());
      });

}
   Icon icpnfloating =Icon(Icons.add);
   bool flotingaction1 =true;
void action ({
  required   bool flotingaction,
     required     Icon icon,
}){
  flotingaction1=flotingaction ;
  icpnfloating=icon;
  emit(action_state());
}

}