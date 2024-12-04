import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:untitled3/layout/api/cubit_api.dart';
import 'package:untitled3/layout/api/status_api.dart';
import 'package:untitled3/shared/components/componants.dart';

class SienceScreen extends StatelessWidget {
  const SienceScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return
      BlocConsumer <cubit_appi,status_api>(

          listener: (context,state) { },
          builder: (context,state) {
            List<dynamic> mainlist3 = cubit_appi.get(context).science;
            return apilistforscreen(mainlist3);
          });

  }
}