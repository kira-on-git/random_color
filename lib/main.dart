import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'switch bg color',
      debugShowCheckedModeBanner: false,
      home: MyHomePage(title: 'Random Background Color'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Color bgColor = Colors.white;

  void _randomColor(){
    setState(() {
      var random = Random();
      final List<Color> colorList = [
        const Color(0xffffffff),
        Colors.red,
        Colors.blue,
        Colors.orange,
        Colors.purple,
        Colors.green,
        Colors.blueGrey[200]!,
        Colors.yellow,
        Colors.teal,
        Colors.pink,
        Colors.lime,
        Colors.lightBlueAccent,
        Colors.yellowAccent,
        Colors.redAccent,
        Colors.cyan,
        Colors.brown,
        Colors.deepPurpleAccent
      ];
      final rndIndex = random.nextInt(colorList.length);
      //print(colorList[rndIndex]);
      bgColor = colorList[rndIndex];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      appBar: AppBar(
        backgroundColor: Colors.black87,
        title: Text(
          widget.title,
          style: const TextStyle(color: Colors.white, fontWeight: FontWeight.w800),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const <Widget>[
            /*Text(
              "<colorName>",
              style: TextStyle(fontSize: 36),
            ),*/
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: ()=>_randomColor(),
        backgroundColor: Colors.black87,
        child: const Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        shape: const CircularNotchedRectangle(),
        notchMargin: 6,
        color: Colors.black87,
        child: Container(
          height: 60,
        ),
      ),
    );
  }
}
