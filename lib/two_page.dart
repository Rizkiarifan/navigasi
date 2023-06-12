import 'package:flutter/material.dart';
import 'package:hellow/three_page.dart';
import 'package:hellow/first_page.dart';

class TwoPage extends StatelessWidget {
  const TwoPage({super.key});

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
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const FirstPage(),
                  ),
                );
              },
            ),
            ListTile(
              title: const Text('Three Page'),
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => const ThreePage(),
                ));
              },
            ),
          ],
        ),
      ),
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Two Page"),
        toolbarHeight: 50,
      ),
      body: ElevatedButton(
        child: const Text("back"),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
    );
  }
}
