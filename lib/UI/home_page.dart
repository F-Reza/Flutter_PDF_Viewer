import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  static const String routeName = '/';
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter PDF Viewer'),
        centerTitle: true,
        leading: const Icon(Icons.sort_rounded),
        actions: [
          IconButton(
            icon: const Icon(Icons.help),
            onPressed: () {
              //
            },
          ),
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: Container(
              alignment: Alignment.center,
              color: Colors.teal,
              child: const Text('Window-1'),
            ),
          ),
          Expanded(
            child: Container(
              alignment: Alignment.center,
              color: Colors.pinkAccent,
              child: const Text('Window-2'),
            ),
          )
        ],
      ),
    );
  }
}
