import 'package:flutter/material.dart';

void main() => runApp(CalculatorApp());

class CalculatorApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          brightness: Brightness.light,
          primaryColor: Colors.lightGreen[600],
          //accentColor: Colors.blueGrey[100],
          // fontFamily: 'Georgia',

          textTheme: TextTheme(
            headline1: TextStyle(fontSize: 72.0, fontWeight: FontWeight.bold),
            headline6: TextStyle(fontSize: 36.0, fontStyle: FontStyle.italic),
            bodyText2: TextStyle(fontSize: 14.0, fontFamily: 'Hind'),
          )),
      
      home: Scaffold(
        appBar: AppBar(
          title: Text('Calculator'),
        ),
        body: ButtonGrid(),
        
      ),
      
    );
  }
}

class ButtonGrid extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        NumberCircle('1'),
        NumberCircle('2'),
        NumberCircle('3'),
      ],
    );
  }
}
class NumberCircle extends StatelessWidget {
  
  final String number;
  
  NumberCircle(this.number);
  
  @override
  Widget build(BuildContext context) {
    return Center(
          child: Container(
            width: 100,
            height: 100,
            decoration: BoxDecoration(
              border: Border.all(width: 2),
              shape: BoxShape.circle,
              color: Colors.amber,
            ),
            child: Align(
              alignment: Alignment.center,
              child: Text(number),
              ))
           );
    
  }
}


