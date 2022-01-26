import 'package:flutter/material.dart';
import 'package:test_tut/widgets/drawer.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Flutter",
          style: TextStyle(
            color: Colors.black,
          ),
        ),
      ),
      body: Center(
        // ignore: avoid_unnecessary_containers
        child: Container(
          child: const Text(
            'Welcome to Tutorial!',
          ),
        ),
      ),
      drawer: const AppDrawer(),
    );
  }
}
