import 'package:flutter/material.dart';
import 'package:pert10/main_page.dart';
import 'package:pert10/crud_page.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: "Sansflix",
    theme: ThemeData(
      primarySwatch: Colors.blue,
    ),
    home: const MainPage(),
    routes: {
      '/page1': (context) => CrudPage(),
    },
  ));
}
