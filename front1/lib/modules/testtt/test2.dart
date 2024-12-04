import 'package:flutter/material.dart';
class products extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }




  String ?name;
  String ? price;
  String ? image ;


  products({
     required String name1,
     required  String price1,
     required  String image1}
   ){
   this.name=name1;
   this.price=price1;
   this.image=image1;
  }
  List <products> productslist =[];
  void products_list (){

    productslist.add(products(name1: '${name}', price1: '$price', image1: '$image' ) );
  }
  void print4 ( ){
    productslist.forEach((products p){
      print(p.name);
      print(p.price);
    });
  }

}
