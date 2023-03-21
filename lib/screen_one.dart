import 'package:flutter/material.dart';
import 'package:textfield/screen_two.dart';

class ScreenOne extends StatelessWidget {
  const ScreenOne({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("MultiScreen - Screen 1"),
      ),
      body: SafeArea(
          child: ListView.separated(
              itemBuilder: (ctx, index) {
                return ListTile(
                  title: Text("Person $index"),
                  subtitle: Text("Message"),
                  leading: CircleAvatar(),
                  trailing: Text("$index:00 PM"),

                  onTap: () { //onTap widget is used to route to another page on tap on the listtile
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (ctx) {
                      return Screentwo(name: "Person $index");
                    }));
                  },
                  
                );
              },
              separatorBuilder: ((context, index) {
                return Divider();
              }),
              itemCount: 50)),
    );
  }
}
