import 'package:flutter/material.dart';
import 'package:hellow/first_page.dart';




void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Navigasi',
      debugShowCheckedModeBanner: false,
      home: FirstPage(),
    );
  }
}
