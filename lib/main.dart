import 'package:flutter/material.dart';
import 'package:listview_with_multiple_views/screen/home_page.dart';

void main() {
  runApp(const MaterialApp(
    title: "Listview With Multiple Views",
    home: MyApp(),
    debugShowCheckedModeBanner: false,
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(appBar: null, body: HomePage());
  }
}
