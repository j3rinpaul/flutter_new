import 'package:flutter/material.dart';

class ListViewSample extends StatefulWidget {
  const ListViewSample({super.key});

  @override
  State<ListViewSample> createState() => _ListViewSampleState();
}

class _ListViewSampleState extends State<ListViewSample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("List VIew"),
      ),
      body: Center(
        child: ListView(
          //for listing elements listview is used
          //if column is used the pixels would break at the very end and that would result in error

          children: List.generate(100, (index) {
            return Column(
              children: [
                Text("List View $index"),
                Divider(),
              ],
            );
          }),
        ),
      ),
    );
  }
}
