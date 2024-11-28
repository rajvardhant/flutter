// ignore_for_file: deprecated_member_use

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    final imageurl = "https://th.bing.com/th/id/OSK.HERO8VdSW-uOmzCH6b6tsGPFhyN2opdgiA5wF4tqo7pbmPA?rs=1&pid=ImgDetMain";
    return Drawer(

      child: Container(
        color: Colors.deepPurple,
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(

                padding: EdgeInsets.zero,
                child: UserAccountsDrawerHeader(
                  // decoration: BoxDecoration(color:Colors.red),
                  margin: EdgeInsets.zero,
                  accountName: Text("Raj"),
                  accountEmail: Text("raj@gamil.com"),
                  currentAccountPicture: CircleAvatar(
                    backgroundImage: NetworkImage(imageurl),
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
                    textScaleFactor: 1.2,
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
                ListTile(
                  leading: Icon(
                    CupertinoIcons.person_fill,
                    color: Colors.white,
                  ),
                  title: Text(
                    "Profile",
                    textScaleFactor: 1.2,
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
                    "Email",
                    textScaleFactor: 1.2,
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
          ],
        ),
      ),
    );
  }
}
