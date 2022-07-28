import 'package:flutter/material.dart';

void main() => runApp(CalculatorApp());

class CalculatorApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          brightness: Brightness.light,
          textTheme: TextTheme(
            headline6: TextStyle(fontSize: 36.0, fontWeight: FontWeight.bold),
            bodyText2: TextStyle(fontSize: 28.0, fontFamily: 'Hind'),
          )),
      
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.cyan[800],
          title: Center(
            child: Text('Calculator'),
          ),
          leading: 
            Icon(
              Icons.more_horiz
            ),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 100,
              height: 20,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    width: 20,
                    height: 80,
                  ),
                  Container(
                    width: 250,
                    height: 80,
                    decoration: BoxDecoration(
                      border: Border.all(width: 2),
                      shape: BoxShape.rectangle,
                      color: Colors.blueGrey[600],
                    ),
                    child: Align(
                      alignment: FractionalOffset(0.1, 0.5),
                      child: Text(
                        '2+2',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                  Container(
                    width: 100,
                    height: 80,
                  ),
                ],
              ),
            ),
            Flexible(
              child: GridView.count( //scrolling is possible
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
                      color: Colors.blueGrey[200],
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
                      color: Colors.blueGrey[200],
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
                      color: Colors.blueGrey[200],
                    ),
                    child: Align(
                      alignment: Alignment.center,
                      child: Text('9'),
                    ),
                  ),
                  Container(
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(
                      border: Border.all(width: 2),
                      shape: BoxShape.rectangle,
                      color: Colors.blueGrey[300],
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
                      color: Colors.blueGrey[200],
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
                      color: Colors.blueGrey[200],
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
                      color: Colors.blueGrey[200],
                    ),
                    child: Align(
                      alignment: Alignment.center,
                      child: Text('6'),
                    ),
                  ),
                  Container(
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(
                      border: Border.all(width: 2),
                      shape: BoxShape.rectangle,
                      color: Colors.blueGrey[300],
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
                      color: Colors.blueGrey[200],
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
                      color: Colors.blueGrey[200],
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
                      color: Colors.blueGrey[200],
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
                      color: Colors.blueGrey[200],
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
                    height: 100,
                    decoration: BoxDecoration(
                      border: Border.all(width: 2),
                      shape: BoxShape.rectangle,
                      color: Colors.blueGrey[300],
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
