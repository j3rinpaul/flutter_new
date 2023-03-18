import 'package:flutter/material.dart';

void main() {
  runApp(Myapp());
}

//if the ui need to be changed on data change that is stateful
//eg login page
//if the page remains just need to exhibit the data fetched from the db then stateless is used
//because the page doesnot changes as the user interacts it only displays the data

class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.blueGrey,
      ),
      home: HomeScreen(),
    );
  }
}

/*stateful is that the ui holding that variable has the value of the data that holds if the data inside that changes then the ui also changes
  ie, if a text has a variable name inside it in stateful the name variable holds the data that is to be displayed
  if the data inside the variable is changed then state of the ui also changed hence the ui also changes
 */

class HomeScreen extends StatefulWidget {
  HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final _textC = TextEditingController();
  //final is used because a object of texteditingcontroller is made
  String _displayText = "This texty";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 64, 123, 225),
      ),
      body: SafeArea(
        child: Center(
          child: Padding(
            //to apply padding from all sides EdgeInsets.all() is used
            //to apply padding from one side then EdgeInsets.only(<which side to give padding> = <padding>) is used

            padding: const EdgeInsets.all(30),
            child: Column(
              children: [
                TextField(
                  controller:
                      _textC, //controller widget is used to retrieve data from the text field
                  decoration: InputDecoration(border: OutlineInputBorder()),
                ),
                Container(
                  margin: EdgeInsets.all(10),
                  child: ElevatedButton(
                      onPressed: () {
                        print(_textC.text);
                        setState(() {
                          _displayText = _textC.text; //setState function is used to inform the ui that the state has been changed
                        });
                      },
                      child: const Text("Click Here")),
                ),
                Text(_displayText)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
