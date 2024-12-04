
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:untitled3/modules/counter/bloc/cubit.dart';
import 'package:untitled3/modules/counter/bloc/states.dart';

class CounterScreen  extends StatelessWidget {




  @override
  Widget build(BuildContext context) {
    return BlocProvider(

      create: (BuildContext context) => countercubit(),
      child: BlocConsumer< countercubit, counterstates>
        (

        listener: (BuildContext context, state) {
     if(state is counterMinus)   print('minus'+ '${state.count}');
     if( state is counterPLus) print ( 'plus'+'${state.count}');
        },
        builder: (BuildContext context,  state) {
          return  Scaffold(
      appBar: AppBar(
      backgroundColor: Colors.cyan,

          leading: IconButton(onPressed: (){ }, icon: Icon(Icons.ac_unit)),
    title: Text('just taisting'),
    actions: [
    IconButton(onPressed: (){ }, icon: Icon(Icons.search),),
    ],
    elevation: 15.0,
    shadowColor: Colors.blue,
    ),
    body :
    Center(
    child: Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
    TextButton(
    onPressed: ()
    {
      countercubit.get(context).minus();

    }, child: Text ( ' minus',
    style: TextStyle(
    fontSize: 30.0, fontWeight: FontWeight.bold,
    ),),

    ),
    Padding(
    padding:
    EdgeInsets.symmetric(
    horizontal: 10.0,
    ),
    child:
    Text(

    ' ${countercubit.get(context).count}',
    style: TextStyle(
    fontSize: 30.0, fontWeight: FontWeight.bold,
    ),),

    ),
    TextButton(onPressed: ()
    {

      countercubit.get(context).plus();

    }, child: Text('plus',
    style: TextStyle(
    fontSize: 30.0, fontWeight: FontWeight.bold,
    ),),),

    ],
    ),
    ),





    );
  }
    ),
    );
}
}
