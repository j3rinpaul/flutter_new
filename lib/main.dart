import 'package:flutter/material.dart';
import 'package:textfield/screens/splash.dart';



void main() {
  runApp(Myapp());
}

class Myapp extends StatefulWidget {
  const Myapp({super.key});

  @override
  State<Myapp> createState() => _MyappState();
}

/*                               ___________
                               |            \
                              |              \ 
------->(init state)------------->(build | didchangedependencies)-------------->(dispose) */

/*init state : before the component is being loaded only once
  didchangedependencies and build methods are continiously called
  dipose : when the screen is disposed(to remove from the memory)
 */

class _MyappState extends State<Myapp> {
  @override
  void initState() {
    // TODO: implement initState
    //this is called at once that is it is called initally when the app starts
  //all functions are called before calling the parent cause we need to finish all the work before the parent arrives
    super.initState();
  }

  
  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    //continuosly called inside the ui
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    //is also continously called inside tha ui
    return MaterialApp(
      home: ScreenSplash(),
    );
  }

  @override
  void dispose() {
    // TODO: implement dispose
    //to dispose a ui that has been used or to navigate to another page
    super.dispose();
  }
}

/*instead of return we can use

  sum(a,b) => a+b;

 */