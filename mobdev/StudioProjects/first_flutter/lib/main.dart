import 'package:flutter/material.dart';
// import 'package:fingerprintjs/fingerprintjs.dart';

void main() => runApp(App());
  //The function runApp() starts the Flutter application
  // Directionality(
  //     textDirection: TextDirection.rtl,
  //     child: Center(
  //         child: Text(
  //           'Hello World!', //The first argument is a text that needs
  //           textDirection:
  //           TextDirection.ltr, //here we set the direction "left to right"
  //         ),
  //     ),
  // ),
  //
  // Directionality(
  //   textDirection: TextDirection.ltr,
  //   child: Center(child: MyStatelessWidget()),
  // ),
// );

// class MyStatelessWidget extends StatelessWidget {
//   @override
//   Widget build(BuildContext context){
//     return const Text ('Hello, World!');
//   }
// }

//SET ROOT APP - CALLING OTHER WIDGETS
class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int count=0;
  @override
  Widget build(BuildContext context) {
    // return Text('');
    //call another widget
    // return AnotherWidget();
    return Scaffold(
      appBar: AppBar(
        title: Text('AppBar'),
      ),

      body: Center(
        child: Text('Count is : $count',
          style: TextStyle(
              fontSize: 25),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          setState(() {
            count++;
          });
        },
      ),
    );
  }
}
//
// class AnotherWidget extends StatefulWidget {
//   const AnotherWidget({Key? key}) : super(key: key);
//
//   @override
//   State<AnotherWidget> createState() => _AnotherWidgetState();
// }
//
// class _AnotherWidgetState extends State<AnotherWidget> {
//   @override
//   Widget build(BuildContext context) {
//     // return Container();
//     return Text('Bye!');
//   }
// }

