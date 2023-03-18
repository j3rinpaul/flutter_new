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
          backgroundColor: Colors.green[800],
        ),
        body: ListView.separated(
            //listview.bilder and listview.seperated is the most efficent cause it loads items which are at the visible range
            itemBuilder: (ctx, index) {
              return ListTile(
                //listtile is a widget that has the same ui as that of the whatsapp chat
                leading: CircleAvatar(
                    radius: 30,
                    backgroundColor: Color.fromARGB(255, 5, 83, 11),
                    backgroundImage: AssetImage(
                        "assets/images/images.jpg")), //the image or avatar that is to be shown
                title: Text(
                    "Person $index"), //the main title ie,the name of the contact in whatsapp
                subtitle: Text(
                    "Message $index"), //the message shown in the ui of whatsapp
                trailing: Text(
                    "$index:$index PM"), //the time equivalent in whatsapp ui
              );
            },
            separatorBuilder: (ctx, index) {
              return Divider();
            },
            itemCount: 50));
  }
}
