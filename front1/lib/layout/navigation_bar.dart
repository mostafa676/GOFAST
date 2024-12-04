import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sqflite/sqflite.dart';
import 'package:untitled3/modules/navigationbar_archived/archived.dart';
import 'package:untitled3/modules/navigationbar_done/done.dart';
import 'package:untitled3/modules/navigationbar_tasks/tasks.dart';
import 'package:untitled3/shared/components/componants.dart';
import 'package:untitled3/shared/components/constants.dart';
import 'package:untitled3/shared/cubit_navigationbar/cubit_nabigationbar2.dart';
import 'package:untitled3/shared/cubit_navigationbar/states_navigationbar.dart';

class navigation_bar extends StatelessWidget {

  var bottomsheet = GlobalKey<ScaffoldState>();
  var fromkey= GlobalKey<FormState>();

  var TextTittle = TextEditingController();
  var  TextTime= TextEditingController();
  var  DateTime1= TextEditingController();

  Widget build(BuildContext context) {





    return BlocProvider(

      create: (BuildContext context) => cubit_bar()..CreatDataBase(),
      child: BlocConsumer< cubit_bar , states_bar>
        (
        listener: (BuildContext context, Object? state) {  },
        builder: (BuildContext context, state) {

          cubit_bar cubit = cubit_bar.get(context) ;
          return Scaffold(
          key: bottomsheet,
          appBar: AppBar(

          backgroundColor: Colors.cyan,
          title: Text(
          cubit.titles[cubit.currenstate],
          ),),

           bottomNavigationBar: BottomNavigationBar(
          currentIndex: cubit.currenstate,
          onTap: (index){
            cubit_bar.get(context).screen(index);
          //  setState(() {
          //  currenstate=index;
          //});

          },

          items:
          [
          BottomNavigationBarItem(icon: Icon(Icons.menu),
          label:'taskes' ),
          BottomNavigationBarItem(
          icon:Icon( Icons.check),
          label: 'Done'),
          BottomNavigationBarItem(icon: Icon(Icons.archive_outlined),
          label: 'Archived'),
          ]
          ),
          body:cubit.body[cubit.currenstate],
          floatingActionButton: FloatingActionButton(

          onPressed: () {
          if(cubit.flotingaction1) {
          bottomsheet.currentState?.showBottomSheet( (context) =>

          Container(
          width: double.infinity,
          height: 300,
          child: Form(
          key: fromkey,
          child: Column(

          mainAxisAlignment: MainAxisAlignment.end,

          children: [
          fromfield(
          hitOrNot: false,
          labelText: 'Task title',
          prefix: Icon(Icons.text_fields_sharp),
          controler: TextTittle ,
          inputType: TextInputType.text,
          border: OutlineInputBorder(),
          validator: (value){
          if((value??"").isEmpty){
          return 'this text field is empty';
          }
          return null;
          },
          ontop: () {
          print('done tittle');
          }
          ),
          SizedBox(
          height: 20.0 ,
          ),
          fromfield(
          hitOrNot: false,
          labelText: 'Task time',
          prefix: Icon(Icons.watch_later_outlined),
          controler: TextTime ,
          inputType: TextInputType.number,
          border: OutlineInputBorder(),
          validator: (value){
          if((value??"").isEmpty){
          return 'this text field is empty';
          }
          return null;
          },
          ontop: (){
          showTimePicker(
          context: context,
          initialTime: TimeOfDay.now(),
          ).then((value) {
          print(value?.format(context));
          TextTime.text= ' ${value?.format(context)}';
          });
          },
          ),
          SizedBox(
          height: 20.0 ,
          ),
          fromfield(
          hitOrNot: false,
          labelText: 'Task date',
          prefix: Icon(Icons.date_range_outlined),
          controler: DateTime1 ,
          inputType: TextInputType.datetime,
          border: OutlineInputBorder(),
          validator: (value){
          if((value??"").isEmpty){
          return 'this text field is empty';
          }
          return null;
          },
          ontop: (){
          showDatePicker(
          context: context,
          initialDate: DateTime.now() ,
          firstDate: DateTime.now() ,
          lastDate: DateTime.now(),
          ).then((value) {
          DateTime1.text= '${value}';
          }); },
          ),
          ],
          ),
          ),
          ),

          ).closed.then((onValue){
          cubit.action(flotingaction: true, icon:Icon( Icons.add));

          });
          cubit.action(flotingaction: false, icon:Icon( Icons.edit));



          }else{
          if( fromkey.currentState!.validate()) {
           cubit.InsertDataBase(
          title: TextTittle.text,
          date: DateTime1.text,
          time: TextTime.text).then((onValue){
          Navigator.pop(context);
          cubit.action(flotingaction: true, icon:Icon( Icons.add));

            });
          } }
          },
          child: cubit.icpnfloating,),
          );         }
      ),
    );}
 Future< String > getName() async{
    return 'naya';
  }


}
