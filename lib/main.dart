import 'package:flutter/material.dart';

import 'Pages/BreweriesListPage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Breweries',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: BreweriesListPage(title: 'Breweries List'),
    );
  }
}
