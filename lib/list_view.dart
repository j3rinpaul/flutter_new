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
        body: ListView.separated(
          //the item to be listed
          itemBuilder: (ctx, index) {
            return Text("List View Seperated $index");
          },
          //what should seperate the item with
          separatorBuilder: (ctx, index) {
            return Divider();
          },
          itemCount: 100, //the number of items that should be listed
        ));
  }
}
