import 'package:flutter/cupertino.dart';
import 'package:shared_preferences/shared_preferences.dart';

class cache_helper {
 static late SharedPreferences sharedpreference ;

  static init() async {
    sharedpreference = await SharedPreferences.getInstance();
  }

  Future<bool> put ({
   required  String  key,
   required bool value ,
}) async{
    return await sharedpreference.setBool(key, value);
  }

static bool? get_data ({
   required String key,
}) {
    return sharedpreference.getBool(key);
}

}