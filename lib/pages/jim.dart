import 'package:flutter/material.dart';
import 'package:flutter_app/models/catalog.dart';
import 'package:flutter_app/widgets/drawer.dart';
import 'package:flutter_app/widgets/item_widget.dart';

    class Jim extends StatelessWidget {
     final int days = 30;
     final String = "Kartikey";

      @override
      Widget build(BuildContext context) {
        return Scaffold(
          appBar: AppBar(
            title: Text("Catalog App"),
          ),
          body: Padding(
            padding: const EdgeInsets.all(16.0),
            child :ListView.builder(itemCount: CatalogModel.items.length,
          itemBuilder: (context, index){
          return ItemWidget(
            item:CatalogModel.items[index],
          );
              },
          ),
          ),
          drawer: MyDrawer(),
        );
      }
    }
