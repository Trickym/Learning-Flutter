import 'package:flutter/material.dart';
import 'package:test_tut/models/products.dart';
import 'package:test_tut/widgets/drawer.dart';
import 'package:test_tut/widgets/product_widget.dart';

class HomePage extends StatelessWidget {
  final dummyList = List.generate(50, (index) => ProductModel.products[0]);
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
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView.builder(
          itemCount: dummyList.length,
          itemBuilder: (context, index) => ProductWidget(
            item: dummyList[index],
          ),
        ),
      ),
      drawer: const AppDrawer(),
    );
  }
}
