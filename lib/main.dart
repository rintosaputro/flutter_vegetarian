import 'package:flutter/material.dart';
import 'package:flutter_vegetarian/model/items_vegetarian.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  final Color? colorTextAppbar = const Color.fromARGB(255, 0, 74, 62);
  final Color? colorSelectedTab = const Color.fromARGB(255, 2, 132, 111);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(
            scaffoldBackgroundColor: const Color.fromRGBO(245, 244, 242, 1)),
        home: DefaultTabController(
          length: 3,
          child: SafeArea(
            child: Scaffold(
                appBar: AppBar(
                  title: Text('Vegetarian mania',
                      style: TextStyle(color: colorTextAppbar)),
                  bottom: TabBar(
                    labelColor: colorSelectedTab,
                    unselectedLabelColor: colorTextAppbar,
                    indicatorColor: colorSelectedTab,
                    tabs: const [
                      Tab(text: 'Vegetables'),
                      Tab(text: 'Fruits'),
                      Tab(text: 'Legumes')
                    ],
                  ),
                  backgroundColor: const Color.fromRGBO(203, 231, 194, 1),
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
                    const Center(
                      child: Text('Kacangaaa'),
                    )
                  ],
                )),
          ),
        ));
  }
}

class CardItem extends StatelessWidget {
  final ItemsVegetarian item;
  const CardItem({Key? key, required this.item}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Card(
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
                    Text(item.nutrition, style: const TextStyle(fontSize: 10)),
                  ],
                ))
          ],
        ),
      ),
    );
  }
}
