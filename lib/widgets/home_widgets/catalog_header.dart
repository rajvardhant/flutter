import 'package:flutter/material.dart';
import 'package:startgit/widgets/themes.dart';
import 'package:velocity_x/velocity_x.dart';

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
