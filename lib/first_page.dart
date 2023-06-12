import 'package:flutter/material.dart';
import 'package:hellow/two_page.dart';
import 'package:hellow/three_page.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({super.key});

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  var judul = "Navigasi";
  var body = "ini body";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            ListTile(
              title: const Text('Two Page'),
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => const TwoPage(),
                ));
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
      appBar: AppBar(centerTitle: true, title: Text(judul)),
      floatingActionButton: FloatingActionButton(onPressed: () {
        setState(
          () {
            judul = "judul berubah";
            body = "body yang sudah berubah";
          },
          
        );
        
      },child: Icon(Icons.arrow_forward_ios),),
      body: Center(child: Text(body)),
    );
  }
}
