// ignore_for_file: public_member_api_docs, sort_constructors_first
// ignore_for_file: unnecessary_null_comparison

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:velocity_x/velocity_x.dart';

import 'package:startgit/models/catalog.dart';
import 'package:startgit/widgets/drawer.dart';
import 'package:startgit/widgets/themes.dart';

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
      // appBar: AppBar(
      //   centerTitle: true,
      //   backgroundColor: Colors.red[100],
      //   elevation: 0.0,
      //   // iconTheme: IconThemeData(color: Colors.black),

      //   title: Text(
      //     "Apple Store",
      //     style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
      //   ),
      // ),
      // body: Padding(
      //   padding: const EdgeInsets.all(16.0),

      //   child: (CatalogModel.items != null && CatalogModel.items.isNotEmpty)?
      //   // ListView.builder(
      //   //   itemCount: CatalogModel.items.length,
      //   //   itemBuilder: (context, index) {
      //   //     return ItemWidget(
      //   //       item: CatalogModel.items[index],
      //   //     );
      //   //   },
      //   // )
      //   GridView.builder(
      //     gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
      //       crossAxisCount: 2,
      //       mainAxisSpacing: 16,
      //       crossAxisSpacing: 16
      //     ),
      //     itemBuilder: (context,index){
      //       final item = CatalogModel.items[index];
      //       return Card(
      //         clipBehavior: Clip.antiAlias,
      //         shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      //         child: GridTile(
      //           header:Container(
      //             child: Text(
      //               item.name,
      //               style: TextStyle(
      //                 color: Colors.white,
      //                 fontSize:12 ),
      //               ),padding: const EdgeInsets.all(5),
      //               decoration: BoxDecoration(
      //                 color: Colors.red[100],
      //               ),
      //               ),
      //           child: Image.network(item.image),
      //           footer:Container(
      //             child: Text(
      //               item.price.toString(),
      //               style: TextStyle(
      //                 color: Colors.black,
      //                 fontSize:12 ),
      //               ),padding: const EdgeInsets.all(3),
      //               decoration: BoxDecoration(
      //                 color: Colors.white,
      //               ),
      //               ),
      //           )
      //           );
      //     },
      //     itemCount: CatalogModel.items.length,
      //     )
      //   :Center(
      //     child: CircularProgressIndicator(),
      //   ),
      // ),
      // drawer: MyDrawer(),
      backgroundColor: MyTheme.creamColor,
      body: SafeArea(

        child: Container(
          padding: Vx.m32,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              catalogHeader(),
              if (CatalogModel.items != null && CatalogModel.items.isNotEmpty)
                CatalogList().expand()
              else
                Center(
                  child: CircularProgressIndicator(),
                )
            ],
          ),
        ),
      ),
    );
  }
}

class catalogHeader extends StatelessWidget {
  const catalogHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        "Apple Store".text.xl5.bold.color(MyTheme.darkBluishColor).make(),
        "Trending products".text.xl.make(),
      ],
    );
  }
}

class CatalogList extends StatelessWidget {
  const CatalogList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: CatalogModel.items.length,
      itemBuilder: (context, index) {
        final catalog = CatalogModel.items[index];
        return CatalogItem(catalog: catalog,);
      },
    );
  }
}

class CatalogItem extends StatelessWidget {
  final Item catalog;
  const CatalogItem({
    Key? key,
    required this.catalog,
  }) : assert(catalog != null), super(key: key);

  @override
  Widget build(BuildContext context) {
    return VxBox(
      child: Row(
        children: [
            CatalogImage(image: catalog.image),
            Expanded(child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  catalog.name.text.lg.color(MyTheme.darkbluishColor).bold.make(),
                  catalog.desc.text.textStyle(context.captionStyle).make(),
                  10.heightBox,
                  ButtonBar(

                    alignment: MainAxisAlignment.spaceBetween,
                    buttonPadding: EdgeInsets.zero,
                    children: [
                      "\$${catalog.price}".text.bold.xl.make(),
                      ElevatedButton(
                        onPressed: (){},
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(
                            Colors.red[100]
                          ),
                        ),
                        child: "Buy".text.make(),

                        )
                    ],
                  ).pOnly(right: 8.0)
                ],
            ),)
      ],)
    ).white.roundedLg.square(150).make().py16();
  }
}


class CatalogImage extends StatelessWidget {
  final String image;
  const CatalogImage({
    Key? key,
    required this.image,
  }) :   super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image.network(
          image,
          ).box.rounded.p8.color(MyTheme.creamColor).make().p16().w40(context);
  }
}
