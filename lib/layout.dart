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
        _buildContainer(double.infinity, 200, Colors.cyan, const Text("IMG")),
        _buildRow([
          _buildContainer(200, 20, Colors.indigo, const Text("")),
          _buildContainer(40, 20, Colors.amberAccent, const Text(""))
        ], Colors.black26),
        _buildRow([
          _buildContainer(40, 20, Colors.amberAccent, const Text("")),
          _buildContainer(40, 20, Colors.amberAccent, const Text("")),
          _buildContainer(40, 20, Colors.amberAccent, const Text("")),
        ], Colors.black12),
        _buildContainer(double.infinity, 150, Colors.purple,
            const Text("Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam"
                "nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam")),
      ],
    );
  }

  Widget _buildContainer(double w, double h, Color c, Widget widget) {
    return Container(
      width: w,
      height: h,
      alignment: Alignment.center,
      padding: const EdgeInsets.all(20),
      color: c,
      child: widget,
    );
  }

  Widget _buildRow(List<Widget> widgets, Color c) {
    return Container(
      color: c,
      padding: const EdgeInsets.all(10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: widgets,
      ),
    );
  }
}
