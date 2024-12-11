import 'package:flutter/material.dart';

import 'package:startgit/models/catalog.dart';
import 'package:startgit/widgets/themes.dart';
import 'package:velocity_x/velocity_x.dart';

class HomeDetailPage extends StatelessWidget {
  final Item catalog;
  const HomeDetailPage({
    Key? key,
    required this.catalog,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      backgroundColor: MyTheme.creamColor,
      bottomNavigationBar:   Container(
        color: Colors.white,
        child: ButtonBar(
                      alignment: MainAxisAlignment.spaceBetween,
                      buttonPadding: EdgeInsets.zero,
                      children: [
                        "\$${catalog.price}".text.bold.xl2.make(),
                        ElevatedButton(
                          onPressed: (){},
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all(
                              Colors.red[100]
                            ),
                          ),
                          child: "Buy".text.make(),

                          ).wh(100,30)
                      ],
                    ).p1(),
      ),
      body:SafeArea(
        bottom: false,
      child:Column(
        children: [
          Hero(tag: Key(catalog.id.toString()),
        child:  Image.network(catalog.image),

        ).p16(),
        Expanded(
          child: VxArc(
            height: 25.0,
            arcType: VxArcType.convey,
            edge: VxEdge.top,

            child: Container(
              width: context.screenWidth,
              color: Colors.white,
              child: Column(
                children: [
                  catalog.name.text.xl2.color(MyTheme.darkbluishColor).bold.make(),
                  catalog.desc.text.textStyle(context.captionStyle).make(),
                  10.heightBox,
              ],
            ).py64(),
            ),
          ),
          ),
        ],

    )
    ),
    );
  }
}
