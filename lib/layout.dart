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
      children: const [],
    );
  }


}