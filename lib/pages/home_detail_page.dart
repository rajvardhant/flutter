import 'package:flutter/material.dart';
import 'package:lorem_ipsum/lorem_ipsum.dart';
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
    String text = loremIpsum(words: 10);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
      ),
      backgroundColor: MyTheme.creamColor,
      bottomNavigationBar:   Container(
        color: Colors.white,
        child: ButtonBar(
                      alignment: MainAxisAlignment.spaceBetween,
                      buttonPadding: EdgeInsets.zero,
                      children: [
                        "\$${catalog.price}".text.bold.xl3.make(),
                        ElevatedButton(
                          onPressed: (){},
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all(
                              Colors.red[100]
                            ),
                          ),
                          child: "Add to cart".text.make(),

                          ).wh(130,40)
                      ],
                    ).p12(),
      ),
      body:SafeArea(
        bottom: false,
      child:Column(
        children: [
          Hero(tag: Key(catalog.id.toString()),
        child:  Image.network(catalog.image),

        ).p20(),
        Expanded(
          child: VxArc(
            height: 40.0,
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
                  text.text.textStyle(context.captionStyle).make(),
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
