import 'package:flutter/material.dart';
import 'package:flutter_vegetarian/model/items_vegetarian.dart';
import 'package:flutter_vegetarian/item_detail_screen.dart';
import 'package:flutter_vegetarian/model/colors.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: const Color.fromRGBO(249, 250, 246, 1),
          appBar: AppBar(
            backgroundColor: const Color.fromRGBO(203, 231, 194, 1),
            elevation: 0,
            title: const Text('Vegetarian mania',
                style: TextStyle(color: colorPrimary)),
            bottom: const TabBar(
              labelColor: colorSecondary,
              unselectedLabelColor: colorPrimary,
              indicatorColor: colorSecondary,
              tabs: [
                Tab(text: 'Vegetables'),
                Tab(text: 'Fruits'),
                Tab(text: 'Legumes')
              ],
            ),
          ),
          body: TabBarView(
            children: [
              Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: GridView.builder(
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 2,
                              crossAxisSpacing: 10,
                              mainAxisSpacing: 10),
                      itemCount: vegetables.length,
                      itemBuilder: (context, index) {
                        return CardItem(item: vegetables[index]);
                      })),
              Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: GridView.builder(
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 2,
                              crossAxisSpacing: 10,
                              mainAxisSpacing: 10),
                      itemCount: fruits.length,
                      itemBuilder: (context, index) {
                        return CardItem(item: fruits[index]);
                      })),
              Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: GridView.builder(
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 2,
                              crossAxisSpacing: 10,
                              mainAxisSpacing: 10),
                      itemCount: legumes.length,
                      itemBuilder: (context, index) {
                        return CardItem(item: legumes[index]);
                      })),
            ],
          )),
    );
  }
}

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
                    Text(item.nutrition,
                        style: const TextStyle(
                            fontSize: 10,
                            color: Color.fromARGB(255, 2, 132, 111))),
                  ],
                ))
          ],
        ),
      ),
    );
  }
}
