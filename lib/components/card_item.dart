import 'package:flutter/material.dart';
import 'package:flutter_vegetarian/model/items_vegetarian.dart';
import 'package:flutter_vegetarian/item_detail_screen.dart';

class CardItem extends StatelessWidget {
  final ItemsVegetarian item;
  const CardItem({Key? key, required this.item}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => ItemDetail(item: item)));
      },
      child: Card(
        elevation: 20,
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(13.0)),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 80,
                child: Image.asset(
                  item.imageAsset,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  children: [
                    Text(
                      item.name,
                      style: const TextStyle(fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 10),
                    Text(
                      item.nutrition,
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                          fontSize: 10,
                          color: Color.fromARGB(255, 2, 132, 111)),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
