

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_app/utils/routes.dart';

class LoginPage extends StatefulWidget {
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name = "";
  bool changeButton = false;
  final _formKey = GlobalKey<FormState>();

  moveToHome(BuildContext context) async {
    if(_formKey.currentState!.validate()) {
      setState(() {
        changeButton = true;
      });
      await Future.delayed(Duration(seconds: 1));
      await Navigator.pushNamed(context, MyRoutes.homeRoute);
      setState(() {
        changeButton = false;
      });
    }
  }
  //const LoginPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: SingleChildScrollView(


      child : Form(
        key: _formKey,
          child: Column(
        children: [
          Image.asset("assets/images/login_page2.png",fit: BoxFit.cover,
            height: 350,
          ),
          Text("Welcome $name",style: TextStyle(
            fontSize: 28,
            fontWeight: FontWeight.bold,
          ),
          ),
        SizedBox(
          height: 40.0,
        ),
         Padding(padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 32.0),
          child :Column(children: [
            TextFormField(
              decoration: InputDecoration(
                hintText: "Enter username",
                labelText: "Username",
              ),
             validator: (String? value) {
               if (value!.isEmpty) {
                 return "Username cann't be empty";
               }

               return null;
             },
              onChanged: (value){
                name = value;
                setState(() {

                });

              },
            ),
            TextFormField(
              obscureText: true,
              decoration: InputDecoration(
                hintText: "Enter password",
                labelText: "Password",
              ),
              validator: (String? value) {
                  if(value!.isEmpty){
                    return "Password Cannot be empty";
                  }
                  else if (value.length < 6) {
                  return "Password length should be atleast 6 characters";

                  }
                  return null;
                },

            ),
            SizedBox(
              height: 30.0,
            ),
            Material(
                color: Colors.deepPurple,
                borderRadius: BorderRadius.circular(changeButton?50  : 8),

                child: InkWell(
              onTap:() => moveToHome(context),
              child : AnimatedContainer(
                duration: Duration(seconds: 1),
              width: changeButton?50 : 150,
              height: 50,
              
              alignment: Alignment.center,
              child :changeButton?Icon(Icons.done,
              color: Colors.white,
              )
              : Text("Login",style: TextStyle (color: Colors.white, fontWeight: FontWeight.bold,fontSize: 18),
              ),


    ),
                ),


         ),
  ],
    ),


         )
      ],
      ),
         ),
      ),
    );


  }
}


