import 'package:flutter/material.dart';
import 'package:flutter_app/Jim.dart';

void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    //double pi = 3.14;
   // var day = "tuesday"; //It recogonize any thing string,int
    //const tpie = 6.28;
    //final pie = 3.14232;
    // difference between const and final is that we can change the value of final


    return MaterialApp(
      home: Jim(),
    );
  }
}
