import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:textfield/screen_two.dart';

class ScreenOne extends StatelessWidget {
  ScreenOne({super.key});

  final _textE = TextEditingController();

  @override
  Widget build(BuildContext context) {
    //here now it checks whether the data is saved or not
    // in apps the splash screen is seen before the start
    //thats where all these things are being checked
    //that is when all the things needed to be checked

    getData(context);
    return Scaffold(
      appBar: AppBar(
        title: Text("MultiScreen - Screen 1"),
      ),
      body: SafeArea(
          child: Padding(
        padding: EdgeInsets.all(20),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextFormField(
                controller: _textE,
              ),
              ElevatedButton(
                  onPressed: () {
                    saveStorage();
                  },
                  child: Text("Save Data"))
            ],
          ),
        ),
      )),
    );
  }

// as the sharedpref is of the future class async and await are used
  Future<void> saveStorage() async {
    print(_textE.text);

    //initializing the shared preferences
    final sharedPref = await SharedPreferences.getInstance();

    //setting the value into the sharedpreferences

    await sharedPref.setString(
        "value",
        _textE
            .text); //it returns a bool value as it a future function await is added
  }
}

//this function checks whether the value is saved or not if saved then redirects to the secondpage
//if not then loads the home page to save the value

Future<void> getData(BuildContext context) async {
  final sharedPrefs = await SharedPreferences.getInstance(); //declared the shared preference value
  final datastr = sharedPrefs.getString("value");//retrieve the value of shared preference
  if (datastr != null) { //check whether it is null or not
    Navigator.of(context).push(MaterialPageRoute(builder: (ctx) {
      return Screentwo(); //pushed into the nextpage is value is saved
    }));
  }
}









/*


late SharedPreferences sharedPreferences; //late is given for that the variable should be assigned before use
//neednot to be assigned at the begining of the app
Future<void> main() async {
  // as sharedpreferences takes time so async and await is added
  WidgetsFlutterBinding.ensureInitialized();
  //the main function is converted into future function
  sharedPreferences = await SharedPreferences.getInstance();


 */