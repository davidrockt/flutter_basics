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
    return ListView(
      children: [
        // Row #1 Image
        FittedBox(
          fit: BoxFit.cover,
          child: Image.network('https://picsum.photos/id/0/400/200'),
        ),

        // Row #2 Title / Rating
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

        // Row #3 Buttons
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            _columnIconText(Icons.call, "CALL"),
            _columnIconText(Icons.map_outlined, "ROUTE"),
            _columnIconText(Icons.share_outlined, "SHARE"),
          ],
        ),

        // Row #4 Text Field
        Container(
          padding: const EdgeInsets.all(30),
          child: const Text(
              "Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy "
                  "eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed "
                  "diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. "
                  "Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor "
                  "sit amet."),
        )
      ],
    );
  }

  Column _columnIconText(IconData icon, String text) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.only(bottom: 5),
          child: Icon(color: Colors.blue, icon),
        ),
        Text(
            style: const TextStyle(
                fontSize: 12, fontWeight: FontWeight.w400, color: Colors.blue),
            text)
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
