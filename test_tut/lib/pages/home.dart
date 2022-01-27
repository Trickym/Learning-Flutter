import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:test_tut/models/products.dart';
import 'package:test_tut/widgets/drawer.dart';
import 'package:test_tut/widgets/product_widget.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    loadData();
  }

  loadData() async {
    await Future.delayed(Duration(seconds: 2));
    final productList =
        await rootBundle.loadString("assets/files/products.json");
    final decodedData = jsonDecode(productList);
    final productData = decodedData["products"];
    ProductModel.products =
        List.from(productData).map<Item>((item) => Item.fromMap(item)).toList();
    setState(() {});
  }

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
        child: ProductModel.products != null && ProductModel.products.isNotEmpty
            ? ListView.builder(
                itemCount: ProductModel.products.length,
                itemBuilder: (context, index) => ProductWidget(
                  item: ProductModel.products[index],
                ),
              )
            : Center(
                child: CircularProgressIndicator(),
              ),
      ),
      drawer: const AppDrawer(),
    );
  }
}
