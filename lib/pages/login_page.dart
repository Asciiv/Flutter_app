

import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  //const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: Column(
        children: [
          Image.asset("assets/images/login_page.png",fit: BoxFit.cover,
          ),
          Text("Welcome",style: TextStyle(
            fontSize: 26,
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
            ),
            TextFormField(
              obscureText: true,
              decoration: InputDecoration(
                hintText: "Enter password",
                labelText: "Password",
              ),
            ),
            SizedBox(
              height: 40.0,
            ),
            ElevatedButton(onPressed: () {
              print("Hi Codepur");
            }, child: Text("Login"),
            style: TextButton.styleFrom(),
            )
          ],

          ),
         ),

        ],
      )
    );
  }
}
