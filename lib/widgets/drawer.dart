// ignore_for_file: deprecated_member_use

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    // final imageurl = "https://th.bing.com/th/id/OSK.HERO8VdSW-uOmzCH6b6tsGPFhyN2opdgiA5wF4tqo7pbmPA?rs=1&pid=ImgDetMain";
    return Drawer(

      child: Container(
        color: Colors.red[50],
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(

                padding: EdgeInsets.zero,
                child: UserAccountsDrawerHeader(
                  decoration: BoxDecoration(color:Colors.red[100]),
                  margin: EdgeInsets.zero,
                  accountName: Text("Raj Vardhan"),
                  accountEmail: Text("rajvardhan@gamil.com"),
                  currentAccountPicture: CircleAvatar(
                    backgroundImage: AssetImage("assets/image/linkedin.jpg"),
                  ),
                ),
                ),
                ListTile(

                  leading: Icon(
                    CupertinoIcons.home,
                    color: Colors.black,
                  ),
                  title: Text(
                    "Home",
                    textScaleFactor: 1.2,
                    style: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                ),
                ListTile(
                  leading: Icon(
                    CupertinoIcons.person_fill,
                    color: Colors.black,
                  ),
                  title: Text(
                    "Profile",
                    textScaleFactor: 1.2,
                    style: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                ),
                ListTile(
                  leading: Icon(
                    CupertinoIcons.mail,
                    color: Colors.black,
                  ),
                  title: Text(
                    "Email",
                    textScaleFactor: 1.2,
                    style: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                ),
          ],
        ),
      ),
    );
  }
}
