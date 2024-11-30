import 'package:flutter/material.dart';
import 'package:startgit/models/catalog.dart';

class ItemWidget extends StatelessWidget {
  // const ItemWidget({super.key});
  final Item item;

  // ignore: unnecessary_null_comparison
  const ItemWidget({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return Card(
      // color:  Colors.red[300],

      elevation: 0.5,
      child: ListTile(
        onTap: () {
          print("${item.name} ");
        },

        leading: Image.network(item.image),
        title: Text(item.name,),
        subtitle: Text(item.desc),
        trailing: Text(
          "\$${item.price}",
          textScaleFactor: 1.5,
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
