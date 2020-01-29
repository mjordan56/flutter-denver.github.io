import 'package:flutter/material.dart';
import 'package:flutter_denver/locator.dart';
import 'package:flutter_denver/views/layout_template/layout_template.dart';

void main() {
  setupLocator();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
          primarySwatch: Colors.blue,
          textTheme: Theme.of(context).textTheme.apply(
                fontFamily: 'Lato',
              )),
      home: LayoutTemplate(),
    );
  }
}
