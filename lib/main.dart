import 'package:flutter/material.dart';
import 'package:flutter_vegetarian/main_screen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(
            scaffoldBackgroundColor: const Color.fromRGBO(245, 244, 242, 1)),
        home: const DefaultTabController(length: 3, child: MainScreen()));
  }
}
