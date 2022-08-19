import 'package:flutter/material.dart';
import 'package:flutter_app/pages/jim.dart';
import 'package:flutter_app/pages/login_page.dart';
import 'package:flutter_app/utils/routes.dart';
import 'package:flutter_app/widgets/themes.dart';




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
     // home: Jim(),
      themeMode:ThemeMode.light,
       theme : MyTheme.lightTheme(context),



    darkTheme: MyTheme.darkTheme(context),
      debugShowCheckedModeBanner: false,
      initialRoute: MyRoutes.homeRoute,
      routes: {
        "/" :(context)=> LoginPage(),
        MyRoutes.homeRoute: (context)=> Jim(),
        MyRoutes.loginRoute: (context)=> LoginPage()
      },
    );
  }
}
