import 'package:flutter/material.dart';

    class Jim extends StatelessWidget {
     final int days = 30;
     final String = "Kartikey";

      @override
      Widget build(BuildContext context) {
        return Scaffold(
          appBar: AppBar(
            title: Text("Catalog App"),
          ),
          body: Center(
            child: Container(
            child: Text("Welcome to $days days of Flutter by Kartikey"),
          ),
          ),
          drawer: Drawer(),
        );
      }
    }
