

import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';
import 'package:flutter/material.dart';
import 'package:untitled3/layout/api/cubit_api.dart';
import 'package:untitled3/modules/logain/logain.dart';
import 'package:untitled3/shared/cubit_navigationbar/cubit_nabigationbar2.dart';

Widget Button({
  required double width ,
  required Color color,
  required VoidCallback function ,
  required String text,
  double radius = 20.0,
  bool bigLine = true,
})  =>
    Container(

        width: width,
        decoration:  BoxDecoration(
          color:  color,
          borderRadius: BorderRadius.circular(radius),
        ),
            child: MaterialButton(
              onPressed: function,
              child: Text('${  bigLine ? text.toUpperCase() : text}'),



            )
                  );
/////////////
Widget fromfield (
{
required String labelText,
required  Icon prefix,
 required TextEditingController controler,
 required TextInputType inputType,
 required InputBorder border,
  required FormFieldValidator<String> validator,
   IconData? suffix,
  VoidCallback ?ontop,
  ValueChanged<String> ? submitted,
  ValueChanged<String> ? onChanged,
  bool hitOrNot = false,
  VoidCallback ? functionbutton,

}
) =>
    TextFormField(
controller: controler ,
keyboardType: inputType,
onFieldSubmitted:  submitted,
onChanged: onChanged,
validator: validator,
obscureText: hitOrNot,
onTap:ontop ,
style: TextStyle(
  color: Colors.black,
  fontWeight: FontWeight.bold,
),
decoration: InputDecoration(
labelText: labelText,
border: border,
prefixIcon: prefix,
suffixIcon: IconButton(onPressed: functionbutton , icon:Icon( suffix)),

),

) ;
        ///////////////////
Widget circleavatar (
  Map model,
   context,
  ) =>  Dismissible(
    key: Key(model['id'].toString()),
    child:
   Row(
    children: [
      CircleAvatar(

           radius:  20.0,
             child: Text('${model['title']}',style: TextStyle(
               fontSize: 10.0,
               fontWeight: FontWeight.bold,
             ),),

      ),
      SizedBox(
        width:  20.0,

      ),
      Text('${model['time']}',style: TextStyle(
        fontSize: 20.0,
        fontWeight: FontWeight.bold,
      ),),
      SizedBox(
        width:  20.0,
      ),
      IconButton(
  icon:  Icon(Icons.done),
  onPressed: () {
    cubit_bar.get(context).updatedata(status: 'done', id: model['id']);

  },),
      SizedBox(
        width:  20.0,
      ),
      IconButton(
        icon:  Icon(Icons.archive),
        onPressed: () {
          cubit_bar.get(context).updatedata(status: 'archived', id: model['id']);

        },),
    ],
  ),
    onDismissed: (direction){
      cubit_bar.get(context).deletdata(id:model['id']);
},
);
////////////////////////////////////////////////////////////////////////
Widget listfortasks ({

   required List <Map> list ,
}) =>  ConditionalBuilder(
condition: list.length>0,
builder:(context) =>  ListView.separated(
itemBuilder: (BuildContext context, int index) => circleavatar(
list[index], context,

),
separatorBuilder: (BuildContext context, int index) =>Container(
color: Colors.red,
child: SizedBox(
height: 5.0,
),
),
itemCount: list.length) ,
fallback:(context) => Column(
children:
[ Icon(Icons.menu),
SizedBox(
height: 10.0,
),
Text( ' there are no tasks',style : TextStyle(
fontSize: 15.0,
fontWeight: FontWeight.bold,
))
]  )  );

///////////////////////////////////////////////////////////////////////////
Widget apilistforscreen (List<dynamic> apit) => Center(
  child: ConditionalBuilder(
      condition: apit.length>0,
      builder:(context) => ListView.separated(
          itemBuilder: (context , int index)=>
              Row(
                        children: [
              Container(
                width: 120,
                child:
              Image(
                  image: NetworkImage('${apit[index]['urlToImage']}'), ),
              ),
              SizedBox(
                width: 4.0,
              ),
              Expanded(
                child: Container(
                  child: Column(
                    children: [
                      Text(
                        '${apit[index]['title']}',style: Theme.of(context).textTheme.bodyMedium,


                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,),
                      SizedBox(
                        height: 3.0,
                      ),
                      Text(
                        '${apit[index]['publishedAt']}',style:
                        Theme.of(context).textTheme.bodyMedium,

                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,),
                    ],
                  ),
                ),
              ),

                        ],
                      ),
          separatorBuilder: (context, int index) => Container(
            height: 2.0,
             color: Colors.deepOrange,
          ) ,
          itemCount: apit.length,),
      fallback:(context) => CircularProgressIndicator(),
  ),
);