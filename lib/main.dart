import 'package:flutter/material.dart';
import 'package:practica_02_mendoza_velasquez/shardsPage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: 'Practica', home: ShardsPage());
  }
}
