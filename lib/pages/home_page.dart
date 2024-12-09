// ignore_for_file: unnecessary_null_comparison

import 'package:flutter/material.dart';
import 'package:startgit/models/catalog.dart';
import 'package:startgit/widgets/drawer.dart';
import 'package:flutter/services.dart';
import 'dart:convert';
import '../widgets/item_widget.dart';

class HomePage extends StatefulWidget {
  final int days;
  final String name;

  const HomePage({super.key, this.days = 6, this.name = "Raj"});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
    loadData();
  }

  loadData() async {
    await Future.delayed(Duration(seconds: 2));
    var catalogJson = await rootBundle.loadString("assets/files/catalog.json");
    var decodedData = jsonDecode(catalogJson);
    // print(decodedData);
    var productsData = decodedData["product"];
    CatalogModel.items = List.from(productsData)
        .map<Item>((item) => Item.fromMap(item))
        .toList();
    setState(() {});
    // print(productsData);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.red[100],
        elevation: 0.0,
        // iconTheme: IconThemeData(color: Colors.black),

        title: Text(
          "Apple Store",
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),

        child: (CatalogModel.items != null && CatalogModel.items.isNotEmpty)?
        ListView.builder(
          itemCount: CatalogModel.items.length,
          itemBuilder: (context, index) {
            return ItemWidget(
              item: CatalogModel.items[index],
            );
          },
        )
        : Center(
          child: CircularProgressIndicator(),
        ),
      ),
      drawer: MyDrawer(),
    );
  }
}
