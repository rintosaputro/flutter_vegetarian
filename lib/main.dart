import 'package:flutter/material.dart';

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
                  Tab(text: 'Vegetable'),
                  Tab(text: 'Fruit'),
                  Tab(text: 'Legumes')
                ],
              ),
              backgroundColor: const Color.fromRGBO(203, 231, 194, 1),
            ),
            body: TabBarView(
              children: [
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: GridView.count(
                    crossAxisCount: 2,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                    children: <Widget>[
                      Card(
                        child: Column(
                          children: <Widget>[
                            AspectRatio(
                              aspectRatio: 2 / 1,
                              child: Image.asset('images/potatoes.png'),
                            ),
                            const Padding(
                              padding: EdgeInsets.only(top: 8, bottom: 8),
                              child: Text('Potato'),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                const Center(
                  child: Text('Nangka a'),
                ),
                const Center(
                  child: Text('Kacang'),
                )
              ],
            )),
      ),
    ));
  }
}
