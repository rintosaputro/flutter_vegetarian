import 'package:flutter/material.dart';
import 'package:flutter_vegetarian/model/colors.dart';
import 'package:flutter_vegetarian/model/items_vegetarian.dart';

class ItemDetail extends StatelessWidget {
  final ItemsVegetarian item;

  const ItemDetail({Key? key, required this.item}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Stack(
              children: <Widget>[
                Container(
                    padding: const EdgeInsets.only(top: 10),
                    width: MediaQuery.of(context).size.width,
                    height: 370,
                    color: Colors.green[50],
                    child: Center(
                        child: SizedBox(
                      height: 160,
                      child: Image.asset('images/fruits/apple.png'),
                    ))),
                SafeArea(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: Row(
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            IconButton(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              icon: const Icon(
                                Icons.arrow_back_ios_new,
                                size: 17,
                              ),
                            ),
                            Text(
                              item.name,
                              style:
                                  const TextStyle(fontWeight: FontWeight.w500),
                            )
                          ],
                        ),
                        const Icon(Icons.heat_pump_rounded)
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              padding: const EdgeInsets.only(
                top: 30,
              ),
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40),
                      topRight: Radius.circular(40))),
              transform: Matrix4.translationValues(0.0, -27.0, 0.0),
              child: const Column(
                children: <Widget>[
                  Text(
                    'Apple',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 24.0,
                        color: colorPrimary),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text('Vit c; 60gr')
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
