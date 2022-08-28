import 'package:flutter/cupertino.dart';
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
        _buildContainer(double.infinity, 200,
            Image.network('https://picsum.photos/id/0/400/200'),
            padding: 0),
        Container(
          width: double.infinity,
          height: 100,
          padding: const EdgeInsets.all(10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(
                width: 300,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: const [
                    Text(
                        style: TextStyle(fontWeight: FontWeight.bold),
                        "Oeschinen Lake Campground"),
                    Text("Kanderleg, Switzerland")
                  ],
                ),
              ),
              const Icon(Icons.star_purple500_outlined),
              const Text("12"),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildContainer(double w, double h, Widget widget,
      {double padding = 20}) {
    return Container(
      width: w,
      height: h,
      padding: EdgeInsets.all(padding),
      child: widget,
    );
  }

  Widget _buildRow(List<Widget> widgets, Color c) {
    return Container(
      padding: const EdgeInsets.all(10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: widgets,
      ),
    );
  }

  Widget _buildTwoLiner(double w, double h, Widget wdgRow1, Widget wdgRow2) {
    return Container(
      width: w,
      height: h,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black),
        color: Colors.amber,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            children: [wdgRow1],
          ),
          Row(
            children: [wdgRow2],
          )
        ],
      ),
    );
  }
}
