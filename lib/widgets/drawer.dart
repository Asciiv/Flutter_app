import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final imageUrl = "https://i.pinimg.com/originals/05/e1/7e/05e17e5ce0242b8dfdb8502343709a5d.jpg";
    return Drawer(
      child : Container(
        color: Colors.deepPurple,
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(

            padding:  EdgeInsets.zero,
            child: UserAccountsDrawerHeader(
                margin: EdgeInsets.zero,
                accountName: Text("Kartikey Mishra"), accountEmail: Text("kartikeym1@gmail.com"),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: NetworkImage(imageUrl),
                ),
          ),
          ),
        ListTile(
          leading: Icon(
            CupertinoIcons.home,
            color: Colors.white,
          ),
          title: Text(
            "Home",
            textScaleFactor: 1.4,
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
          ListTile(
            leading: Icon(
              CupertinoIcons.profile_circled,
              color: Colors.white,
            ),
            title: Text(
              "Profile",
              textScaleFactor: 1.4,
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
          ListTile(
            leading: Icon(
              CupertinoIcons.mail,
              color: Colors.white,
            ),
            title: Text(
              "Email me",
              textScaleFactor: 1.4,
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          )


        ],
      ),
      ),
    );
  }
}
