import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
const HomePage({super.key});
    final days = 5;
    final name = "raj";

@override
Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: const Text("Catalog App"),
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
