import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:untitled3/layout/api/api_screen.dart';
import 'package:untitled3/layout/api/cubit_api.dart';
import 'package:untitled3/layout/api/status_api.dart';
import 'package:untitled3/layout/navigation_bar.dart';
import 'package:untitled3/modules/counter/counter_screen.dart';
import 'package:untitled3/modules/home/home_screen.dart';
import 'package:untitled3/modules/logain/logain.dart';
import 'package:untitled3/modules/masseg/masseg_screen.dart';
import 'package:untitled3/modules/massenger/massenger_desain.dart';
import 'package:untitled3/modules/newbmi/new_screen.dart';
import 'package:untitled3/modules/result/result_screen.dart';
import 'package:untitled3/modules/sience/sience.dart';
import 'package:untitled3/modules/testtt/test.dart';
import 'package:untitled3/modules/testtt/test2.dart';
import 'package:untitled3/shared/bloc_observer.dart';
import 'package:untitled3/shared/network/local/cache_helper.dart';
import 'package:untitled3/shared/network/romote/dio.dart';






void main()async {
  WidgetsFlutterBinding.ensureInitialized();
  await  cache_helper.init();

  Bloc.observer = MyBlocObserver();
  DioHelper.init();
  runApp( MyApp());

}

class MyApp extends StatelessWidget {
 // const MyApp({super.key});




  @override
  Widget build(BuildContext context) {
    bool ? dark= cache_helper.get_data(key: 'dark');
    return BlocProvider(
        create: ( BuildContext context) => cubit_appi()..getBusnisse()..changemode(frame: dark),
    child:  BlocConsumer <cubit_appi, status_api>(
        listener: (BuildContext context, state) {  },
    builder: (BuildContext context,  state) {
     return  MaterialApp(
        debugShowCheckedModeBanner: false,
        theme:
        ThemeData(
        primarySwatch: Colors.deepOrange,
          appBarTheme: AppBarTheme(
            titleTextStyle: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 20.0,
            ),
            actionsIconTheme: IconThemeData(
              color: Colors.black,
              size: 34.0,
            ),
            systemOverlayStyle: SystemUiOverlayStyle(
              statusBarColor: Colors.red,
            statusBarIconBrightness:Brightness.light,

            )

          ),
          bottomNavigationBarTheme: BottomNavigationBarThemeData(
            type: BottomNavigationBarType.fixed,
         //   backgroundColor: Colors.grey,
         selectedItemColor: Colors.deepOrange,
            unselectedItemColor: Colors.black,
         ),
        ),
         darkTheme: ThemeData(
           primarySwatch: Colors.deepOrange,
           scaffoldBackgroundColor: HexColor('1E1E1E'),
           appBarTheme: AppBarTheme(
             backgroundColor: HexColor('1E1E1E'),
             elevation: 2,
               shadowColor: Colors.white,
               titleTextStyle: TextStyle(
                 color: Colors.white,
                 fontWeight: FontWeight.bold,
                 fontSize: 20.0,
               ),
               actionsIconTheme: IconThemeData(
                 color: Colors.white,
                 size: 34.0,
               ),
               systemOverlayStyle: SystemUiOverlayStyle(
                 statusBarColor: Colors.red,
                 statusBarIconBrightness:Brightness.light,

               )

           ),
           bottomNavigationBarTheme: BottomNavigationBarThemeData(
             type: BottomNavigationBarType.fixed,
             backgroundColor:HexColor('1E1E1E'),
             selectedItemColor: Colors.deepOrange,
             unselectedItemColor: Colors.white,
           ),
           textTheme: TextTheme(
             bodyMedium: TextStyle(
               color: Colors.white,

             ),
           ),

         ),
        themeMode: cubit_appi.get(context).colorthemmode? ThemeMode.light : ThemeMode.dark,
      //
      home: ApiScreen(),

      );},
    ) );


  }
}




