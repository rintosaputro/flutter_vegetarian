import 'package:flutter/material.dart';
import 'package:flutter_vegetarian/model/items_vegetarian.dart';
import 'package:flutter_vegetarian/model/colors.dart';
import 'package:flutter_vegetarian/components/card_item.dart';

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
          title: const Text(
            'Vegetarian mania',
            style: TextStyle(color: colorPrimary),
          ),
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
        body: LayoutBuilder(
          builder: (BuildContext context, BoxConstraints constraints) {
            double totalChildAspectRation =
                constraints.maxWidth > 395 ? 1.0 : (2 / 2.5);
            int totalCrossAxisCount = 2;

            if (constraints.maxWidth > 700) {
              totalCrossAxisCount = 3;
            }
            if (constraints.maxWidth > 1000) {
              totalCrossAxisCount = 4;
            }

            return TabBarView(
              children: [
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: GridView.builder(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: totalCrossAxisCount,
                        crossAxisSpacing: 10,
                        mainAxisSpacing: 10,
                        childAspectRatio: totalChildAspectRation),
                    itemCount: vegetables.length,
                    itemBuilder: (context, index) {
                      return CardItem(item: vegetables[index]);
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: GridView.builder(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: totalCrossAxisCount,
                        crossAxisSpacing: 10,
                        mainAxisSpacing: 10,
                        childAspectRatio: totalChildAspectRation),
                    itemCount: fruits.length,
                    itemBuilder: (context, index) {
                      return CardItem(item: fruits[index]);
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: GridView.builder(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: totalCrossAxisCount,
                        crossAxisSpacing: 10,
                        mainAxisSpacing: 10,
                        childAspectRatio: totalChildAspectRation),
                    itemCount: legumes.length,
                    itemBuilder: (context, index) {
                      return CardItem(item: legumes[index]);
                    },
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
