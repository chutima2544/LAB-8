import 'package:flutter/material.dart';
import 'package:flutter_application_5/TabMenu/navigation.dart';
import 'package:flutter_application_5/menu.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        endDrawer: NavigationDrawerWidget(),
        appBar: AppBar(
          backgroundColor: Colors.orange,
          title: Text("CHUBEAM FOOD"),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () => {},
          child: Icon(Icons.shopping_bag_outlined),
          backgroundColor: Colors.orange,
        ),
        body: Menu(),
      ),
    );
  }
}
