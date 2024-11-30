import 'package:flutter/material.dart';
import 'package:startgit/models/catalog.dart';
import 'package:startgit/widgets/drawer.dart';

import '../widgets/item_widget.dart';

class HomePage extends StatelessWidget {
final int days;
  final String name;

  const HomePage({super.key, this.days = 6, this.name = "Raj"});

@override
Widget build(BuildContext context) {

  final dummylist = List.generate(10, (index) => CatalogModel.items[0]);
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
            backgroundColor: Colors.red[100],
            elevation: 0.0,
            // iconTheme: IconThemeData(color: Colors.black),

            title: Text(
              "Apple Store",
              style: TextStyle(color: Colors.black,fontWeight:FontWeight.bold ),
            ),
        ),
        body:Padding(

          padding: const EdgeInsets.all(16.0),
          child: ListView.builder(
            itemCount: dummylist.length,
            itemBuilder: (context, index){
              return ItemWidget(
                item: dummylist[index],);
            },
          ),
        ),
        drawer: MyDrawer(),
        );
}
}
