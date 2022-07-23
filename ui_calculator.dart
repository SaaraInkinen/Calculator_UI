import 'package:flutter/material.dart';

void main() => runApp(CalculatorApp());

class CalculatorApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          brightness: Brightness.light,
          //primaryColor: Colors.lightGreen[600],
          //accentColor: Colors.grey[100],
          // fontFamily: 'Georgia',

          textTheme: TextTheme(
            headline1: TextStyle(fontSize: 72.0, fontWeight: FontWeight.bold),
            headline6: TextStyle(fontSize: 36.0, fontWeight: FontWeight.bold),
            bodyText2: TextStyle(fontSize: 24.0, fontFamily: 'Hind'),
          )),
      
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blueGrey[800],
          title: Center(
            child: Text('Calculator'),
          ),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              width: 100,
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  width: 300,
                  height: 100,
                  decoration: BoxDecoration(
                    border: Border.all(width: 2),
                    shape: BoxShape.rectangle,
                    color: Colors.blueGrey,
                  ),
                  child: Align(
                    alignment: FractionalOffset(0.1, 0.5),
                    child: Text('2+2'),
                  ),
                ),
                Container(
                  width: 100,
                  height: 100,
                ),
              ],
            ),
            Flexible(
              child: GridView.count(
                primary: false,
                padding: const EdgeInsets.all(20),
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                crossAxisCount: 4,
                children: <Widget>[
                  Container(
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(
                      border: Border.all(width: 2),
                      shape: BoxShape.circle,
                      color: Colors.blueGrey[300],
                    ),
                    child: Align(
                      alignment: Alignment.center,
                      child: Text('7'),
                    ),
                  ),
                  Container(
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(
                      border: Border.all(width: 2),
                      shape: BoxShape.circle,
                      color: Colors.blueGrey[300],
                    ),
                    child: Align(
                      alignment: Alignment.center,
                      child: Text('8'),
                    ),
                  ),
                  Container(
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(
                      border: Border.all(width: 2),
                      shape: BoxShape.circle,
                      color: Colors.blueGrey[300],
                    ),
                    child: Align(
                      alignment: Alignment.center,
                      child: Text('9'),
                    ),
                  ),
                  Container(
                    width: 100,
                    height: 40,
                    decoration: BoxDecoration(
                      border: Border.all(width: 2),
                      shape: BoxShape.rectangle,
                      color: Colors.blueGrey[400],
                    ),
                    child: Align(
                      alignment: Alignment.center,
                      child: Text('+'),
                    ),
                  ),
                  Container(
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(
                      border: Border.all(width: 2),
                      shape: BoxShape.circle,
                      color: Colors.blueGrey[300],
                    ),
                    child: Align(
                      alignment: Alignment.center,
                      child: Text('4'),
                    ),
                  ),
                  Container(
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(
                      border: Border.all(width: 2),
                      shape: BoxShape.circle,
                      color: Colors.blueGrey[300],
                    ),
                    child: Align(
                      alignment: Alignment.center,
                      child: Text('5'),
                    ),
                  ),
                  Container(
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(
                      border: Border.all(width: 2),
                      shape: BoxShape.circle,
                      color: Colors.blueGrey[300],
                    ),
                    child: Align(
                      alignment: Alignment.center,
                      child: Text('6'),
                    ),
                  ),
                  Container(
                    width: 100,
                    height: 40,
                    decoration: BoxDecoration(
                      border: Border.all(width: 2),
                      shape: BoxShape.rectangle,
                      color: Colors.blueGrey[400],
                    ),
                    child: Align(
                      alignment: Alignment.center,
                      child: Text('-'),
                    ),
                  ),
                  Container(
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(
                      border: Border.all(width: 2),
                      shape: BoxShape.circle,
                      color: Colors.blueGrey[300],
                    ),
                    child: Align(
                      alignment: Alignment.center,
                      child: Text('1'),
                    ),
                  ),
                  Container(
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(
                      border: Border.all(width: 2),
                      shape: BoxShape.circle,
                      color: Colors.blueGrey[300],
                    ),
                    child: Align(
                      alignment: Alignment.center,
                      child: Text('2'),
                    ),
                  ),
                  Container(
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(
                      border: Border.all(width: 2),
                      shape: BoxShape.circle,
                      color: Colors.blueGrey[300],
                    ),
                    child: Align(
                      alignment: Alignment.center,
                      child: Text('3'),
                    ),
                  ),
                  Container(
                    width: 100,
                    height: 100,
                  ),
                  Container(
                    width: 100,
                    height: 100,
                  ),
                  Container(
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(
                      border: Border.all(width: 2),
                      shape: BoxShape.circle,
                      color: Colors.blueGrey[300],
                    ),
                    child: Align(
                      alignment: Alignment.center,
                      child: Text('0'),
                    ),
                  ),
                  Container(
                    width: 100,
                    height: 100,
                  ),
                  Container(
                    width: 100,
                    height: 40,
                    decoration: BoxDecoration(
                      border: Border.all(width: 2),
                      shape: BoxShape.rectangle,
                      color: Colors.blueGrey[400],
                    ),
                    child: Align(
                      alignment: Alignment.center,
                      child: Text('='),
                    ),
                  ),
                ]
              ),
            ),
          ],
        ),
      ),
    );
  }
}
