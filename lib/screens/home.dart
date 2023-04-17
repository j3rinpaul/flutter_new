import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:textfield/screens/login.dart';



class ScreenHome extends StatelessWidget {
  const ScreenHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home Page"),
        actions: [
          IconButton(
              onPressed: () {
                signOut(context);
              },
              icon: Icon(Icons.exit_to_app_rounded))
        ],
      ),
      body: SafeArea(child: Text("Home")),
    );
  }

  signOut(BuildContext ctx) async {
    //on logout the sharedprefs should be cleared and set to false as all the data is being removed from that
    //for that here we used this function
    final _sharedprefs = await SharedPreferences.getInstance();
    _sharedprefs.clear();

    Navigator.of(ctx).pushAndRemoveUntil(
        //while using logout button we need to remove all the screens from the stack and replace it with another one
        //inorder to do that we use pushAndRemoveUntil function is used
        MaterialPageRoute(builder: (ctx1) => ScreenLogin()),
        (route) => false);
  }
}
