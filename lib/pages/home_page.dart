import 'package:flutter/material.dart';
import 'package:startgit/utils/routes.dart';

class HomePage extends StatelessWidget {
final int days;
  final String name;

  const HomePage({super.key, this.days = 6, this.name = "Raj"});

@override
Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title:const Text("New App"),
            backgroundColor: const Color.fromARGB(255, 218, 251, 187),
        ),
        body: Center(
          child:Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Welcome to $days days of flutter by $name"),

          SizedBox(
            height: 300.0,

          ),

        Align(
          alignment: Alignment.bottomLeft,
          child: Padding(
            padding: EdgeInsets.all(16),

          child: ElevatedButton(
            style: TextButton.styleFrom(
              minimumSize: const Size(100, 50),
            ),
            onPressed: () {
              Navigator.pushNamed(context, MyRoutes.loginRoute);
            },
            child: const Text("⬅️"),
          ),
        ),
        ),



  ],
          ),
        ),
        drawer: const Drawer(),
        );


}
}
