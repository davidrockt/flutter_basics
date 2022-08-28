import 'package:flutter/material.dart';

class LayoutScreen extends StatelessWidget {
  const LayoutScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Layout Screen",
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Layout-Screen'),
        ),
        body: _buildLayout(),
        floatingActionButton: FloatingActionButton(
          onPressed: () => Navigator.pop(context),
          child: const Icon(Icons.arrow_back),
        ),
      ),
    );
  }

  Widget _buildLayout() {
    return Column(
      children: [
        SizedBox(
            width: double.infinity,
            height: 200,
            child: Image.network('https://picsum.photos/id/0/400/200')),

        // This row was helped by https://github.com/flutter/website/tree/main/examples/layout/lakes/step2/lib/main.dart
        Container(
          padding: const EdgeInsets.all(32),
          child: Row(
            children: [
              Expanded(
                child: _columnTwoLiner(),
              ),
              _rowRating(),
            ],
          ),
        ),
      ],
    );
  }

  Widget _rowRating() {
    return Row(children: const [
      Icon(color: Colors.purple, Icons.star_purple500_outlined),
      Text("12")
    ]);
  }

  Widget _columnTwoLiner() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: const EdgeInsets.only(bottom: 8),
          child: Text(
              style: TextStyle(fontWeight: FontWeight.bold),
              "Oeschinen Laket Campground"),
        ),
        Text(
            style: const TextStyle(color: Colors.black26),
            "Kanderleg, Switzerland")
      ],
    );
  }
}
