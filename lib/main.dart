import 'package:flutter/material.dart';
import 'package:lab1/screens/home.dart';
import 'screens/details.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {

  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      title: 'Lab1',
      theme: ThemeData(primarySwatch: Colors.red),
      initialRoute: "/",
      routes: {
        "/": (context) => const Home(),
        "/details": (context) => const Details(),
      },
    );
  }
}
