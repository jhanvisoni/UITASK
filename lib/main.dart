import 'package:flutter/material.dart';
import 'package:uiitask/screens/components/Drawer/drawer_widget.dart';
import 'package:uiitask/screens/home_page_view.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyApp(),
    theme: ThemeData(),
  ));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [DrawerWidget(), HomeScreen()],
      ),
    );
  }

  Widget buildPage() {
    return HomeScreen();
  }
}
