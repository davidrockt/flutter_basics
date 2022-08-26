import 'package:flutter/material.dart';
import 'package:flutter_basics/Product.dart';
import 'package:flutter_basics/ShoppingListItem.dart';
import 'package:flutter_basics/second.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // Scaffold is a layout for
    // the major Material Components.
    return Scaffold(
      appBar: AppBar(
        leading: const IconButton(
          icon: Icon(Icons.menu),
          tooltip: 'Navigation menu',
          onPressed: null,
        ),
        title: const Text('Example title'),
        actions: const [
          IconButton(
            icon: Icon(Icons.cached),
            tooltip: 'Search',
            onPressed: null,
          ),
        ],
      ),
      // body is the majority of the screen.
      body: const ShoppingList(products: [
            Product(name: 'Chips'),
            Product(name: 'Bananas'),
            Product(name: 'Apples')
          ]),
      floatingActionButton: FloatingActionButton(
        tooltip: 'Add', // used by assistive technologies
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return const SecondScreen();
          }));
        },
        child: Icon(Icons.arrow_forward),
      ),
    );
  }
}

void main() {
  runApp(
    const MaterialApp(
      home: MyApp(),
    ),
  );
}
