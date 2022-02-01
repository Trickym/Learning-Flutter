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
      body: SafeArea(
        child: Container(
            padding: const EdgeInsets.all(32.0),
            // ignore: unnecessary_null_comparison
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const CatalogueHeader(),
                (ProductModel.products.isNotEmpty)
                    ? Expanded(
                        child: CatalogueList(),
                      )
                    : const Center(
                        child: CircularProgressIndicator(),
                      )
              ],
            )),
      ),
      drawer: const AppDrawer(),
    );
  }
}

class CatalogueHeader extends StatelessWidget {
  const CatalogueHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: const [
        Text(
          "Catalog App",
          textScaleFactor: 2.5,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.deepPurple,
          ),
        ),
        Text(
          "Trending Products",
          textScaleFactor: 1.3,
        )
      ],
    );
  }
}

class CatalogueList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        shrinkWrap: false,
        itemCount: ProductModel.products.length,
        itemBuilder: (context, index) {
          final catalog = ProductModel.products[index];
          return CatalogItem(catalog: catalog);
        });
  }
}

class CatalogItem extends StatelessWidget {
  final Item catalog;

  const CatalogItem({Key? key, required this.catalog}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Expanded(
        child: Row(
          children: [
            Expanded(
              child: Image.network(
                catalog.image,
                fit: BoxFit.fill,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
