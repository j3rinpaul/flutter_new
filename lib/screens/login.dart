import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:textfield/screens/home.dart';

import '../main.dart';

class ScreenLogin extends StatefulWidget {
  const ScreenLogin({super.key});

  @override
  State<ScreenLogin> createState() => _ScreenLoginState();
}

class _ScreenLoginState extends State<ScreenLogin> {
  final _user = TextEditingController();
  final _pass = TextEditingController();
  bool _datamatched = true;
  bool _isobscure = true;
  final _keyvalue = GlobalKey<
      FormState>(); //this key value takes the current data inside the form
  @override
  Widget build(BuildContext context) {
    // for each text field seperate controller is required
    //

    return Scaffold(
      body: Center(
          child: Padding(
        padding: EdgeInsets.all(20),
        child: Form(
          key: _keyvalue,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("mEssLab"),
              TextFormField(
                //TextFormField has got another widget just to validate the data by itself
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Error Value";
                  } else {
                    return null;
                  }
                },
                controller: _user,
                decoration: InputDecoration(
                    hintText: "USername",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20)))),
              ),
              SizedBox(
                //is to provide a small space between widgets just as margin instead of padding here sizedbox is used
                height: 20.0,
              ),
              TextFormField(
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Error Value";
                  } else {
                    return null;
                  }
                },
                controller:
                    _pass, //controller to access the text inside the textfield
                obscureText:
                    _isobscure, //in case of passwords it must not be viewed inorder to make that private obscureText property is used
                keyboardType: TextInputType.numberWithOptions(),
                decoration: InputDecoration(
                    hintText: "Password",
                    suffixIcon: IconButton(
                        onPressed: () {
                          setState(() {
                            _isobscure = !_isobscure;
                          });
                        },
                        icon: Icon(_isobscure
                            ? Icons.visibility
                            : Icons.visibility_off)),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20)))),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Visibility(
                      visible: !_datamatched, child: Text("Wrong Password")),
                  ElevatedButton(
                      onPressed: () {
                        // checkLog(context);
                        if (_keyvalue.currentState!.validate()) {
                          checkLog(context);
                        }
                        //this validate is based on the validate function we declared inside the textformfield
                      },
                      child: Text("Login")),
                ],
              )
            ],
          ),
        ),
      )),
    );
  }

  void checkLog(BuildContext ctx) async {
    //actually buildcontext is a local parameter of build widget
    //as an ui is being edited in this buildcontext is passed as params and this function is passed into the build widget some button

    final username =
        _user.text; //fetching the username text entered in the textfield
    final password = _pass.text;

    if (username == password) {
      // showDialog(
      //     context: context,
      //     builder: (ctx2) {
      //       return AlertDialog(
      //         title: Text("Password Matched"),
      //         content: Text("You Entered Correct password bitch.."),
      //         actions: [
      //           TextButton(
      //               onPressed: () {
      //                 Navigator.of(ctx2).pop();
      //               },
      //               child: Text("Close"))
      //         ],
      //       );
      //     });
      // setState(() {
      //   _datamatched = true;
      // });
      final sharedprefs = await SharedPreferences.getInstance();
      //on login the true value is assigned into the save_key and later it is checked and other functions are initated
      await sharedprefs.setBool(SAVE_KEY, true);
      
      Navigator.of(ctx)
          .pushReplacement(MaterialPageRoute(builder: (ctx1) => ScreenHome()));
      //the login should be replaced by the home screen
      //login is of ctx and it is replaced by ctx1
    } else {
      //snackbar:viewed in the current context
      //accessing the scaffold messanger as this is of another function
      //the scaffold messanger should be of this context
      ScaffoldMessenger.of(ctx).showSnackBar(SnackBar(
          margin: EdgeInsets.all(20),
          behavior: SnackBarBehavior.floating,
          content: Text("Password doesnot match")));

      //alertbox
      showDialog(
          context: context,
          builder: (ctx1) {
            return AlertDialog(
              title: Text("Error"),
              content: Text("Password doenot match"),
              actions: [
                TextButton(
                    onPressed: () => Navigator.of(ctx1).pop(),
                    child: Text("Close"))
              ],
            );
          });
      setState(() {
        _datamatched = false;
      });
    }
  }
}
