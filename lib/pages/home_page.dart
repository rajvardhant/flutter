import 'package:flutter/material.dart';
import 'package:startgit/widgets/drawer.dart';

class HomePage extends StatelessWidget {
final int days;
  final String name;

  const HomePage({super.key, this.days = 6, this.name = "Raj"});

@override
Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
            backgroundColor: Colors.white,
            elevation: 0.0,
            // iconTheme: IconThemeData(color: Colors.black),

            title: Text(
              "Catalog App",
              style: TextStyle(color: Colors.black,fontWeight:FontWeight.bold ),
            ),
        ),
        body: Center(
            child: Text("Welcome to $days days of flutter by $name"),
        ),
        drawer: MyDrawer(),
        );
}
}
