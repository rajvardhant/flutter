import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
final int days;
  final String name;

  const HomePage({super.key, this.days = 6, this.name = "Raj"});

@override
Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title:Text("New App"),
            backgroundColor: const Color.fromARGB(255, 218, 251, 187),
        ),
        body: Center(
            child: Container(
                child: Text("Welcome to $days days of flutter by $name"),
            ),
        ),
        drawer: Drawer(),
        );
}
}
