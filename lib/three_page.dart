import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:hellow/two_page.dart';
import 'package:hellow/first_page.dart';

class ThreePage extends StatelessWidget {
  const ThreePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            ListTile(
              title: const Text('Home'),
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => const FirstPage(),
                ));
              },
            ),
            ListTile(
              title: const Text('Two Page'),
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => const TwoPage(),
                ));
              },
            ),
          ],
        ),
      ),
      appBar: AppBar(
        title: const Text("Two Page"),
      ),
      body: const Text("halaman kosong "),
    );
  }
}
