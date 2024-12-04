import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:untitled3/modules/counter/bloc/states.dart';

class countercubit extends Cubit<counterstates>{
  countercubit (): super(counterInitialstate());
   int count=1;
  static countercubit get(context ) => BlocProvider.of(context);
   void plus (){
     count++;
     emit(counterPLus(count));
   }
   void minus () {
     count--;
     emit(counterMinus(count));
   }

}