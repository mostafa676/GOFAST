

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:untitled3/shared/components/componants.dart';
import 'package:untitled3/shared/components/constants.dart';
import 'package:untitled3/shared/cubit_navigationbar/cubit_nabigationbar2.dart';
import 'package:untitled3/shared/cubit_navigationbar/states_navigationbar.dart';

class done extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return


      BlocConsumer< cubit_bar , states_bar>
        (
          listener: (BuildContext context, Object? state) {  },
          builder: (BuildContext context, state) {
            cubit_bar cubit4 = cubit_bar.get(context) ;
            List<Map> list2 = cubit4.done2;
            return  listfortasks(list: list2);


          });
  }}
