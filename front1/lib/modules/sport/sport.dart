import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:untitled3/layout/api/cubit_api.dart';
import 'package:untitled3/layout/api/status_api.dart';
import 'package:untitled3/shared/components/componants.dart';

class SportScreen extends StatelessWidget {
  const SportScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return
      BlocConsumer <cubit_appi,status_api>(

          listener: (context,state) { },
          builder: (context,state) {
            List<dynamic> mainlist1 = cubit_appi.get(context).sport;
            return apilistforscreen(mainlist1);
          });
  }
}