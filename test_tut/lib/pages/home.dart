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
    await Future.delayed(const Duration(seconds: 2));
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
        // ignore: unnecessary_null_comparison
        child: ProductModel.products != null && ProductModel.products.isNotEmpty
            ? GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 16,
                    mainAxisSpacing: 16),
                itemCount: ProductModel.products.length,
                itemBuilder: (context, index) {
                  final item = ProductModel.products[index];
                  return Card(
                      clipBehavior: Clip.antiAlias,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      child: GridTile(
                          header: Container(
                            child: Text(
                              item.name,
                              style: const TextStyle(
                                color: Colors.white,
                              ),
                            ),
                            padding: const EdgeInsets.all(12.0),
                            decoration: const BoxDecoration(
                              color: Colors.deepPurple,
                            ),
                          ),
                          footer: Container(
                              padding: const EdgeInsets.all(12.0),
                              decoration:
                                  const BoxDecoration(color: Colors.deepPurple),
                              child: Text(
                                "\$${item.price.toString()}",
                                style: const TextStyle(color: Colors.white),
                              )),
                          child: Image.network(item.image)));
                },
              )
            : const Center(
                child: CircularProgressIndicator(),
              ),
      ),
      drawer: const AppDrawer(),
    );
  }
}



//For List View
// ListView.builder(
//                 itemCount: ProductModel.products.length,
//                 itemBuilder: (context, index) => ProductWidget(
//                   item: ProductModel.products[index],
//                 ),
//               )