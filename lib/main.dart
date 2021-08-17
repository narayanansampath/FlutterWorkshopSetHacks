import 'package:flutter/material.dart';
import 'package:flutter_workshop/CounterPage.dart';
import 'package:flutter_workshop/ListViewWidgetPage.dart';
import 'package:flutter_workshop/TextFieldWidget.dart';

import 'WidgetPage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: MyHomePage(title: 'Flutter Workshop'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  final String title;

  MyHomePage({Key? key, required this.title}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  List<Widget> _children = [
    ListViewWidgetPage(),
    WidgetPage(),
    TextFieldWidget(),
    CounterPage()
  ];

  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: _children[index],
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home, color: Colors.black), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.list, color: Colors.black), label: 'List'),
          BottomNavigationBarItem(
              icon: Icon(Icons.text_fields, color: Colors.black), label: 'TextField'),
          BottomNavigationBarItem(
              icon: Icon(Icons.timer, color: Colors.black), label: 'Counter'),
        ],
        onTap: (i) => setState(() => index = i),
      ),
    );
  }
}
