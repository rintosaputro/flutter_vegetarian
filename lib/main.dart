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
            body: const TabBarView(
              children: [
                Center(
                  child: Text('Sawi'),
                ),
                Center(
                  child: Text('Nangka'),
                ),
                Center(
                  child: Text('Kacang'),
                )
              ],
            )),
      ),
    ));
  }
}
