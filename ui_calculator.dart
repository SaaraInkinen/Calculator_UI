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
        body: Center(
          child: ButtonGrid(),
        ),
      ),
    );
  }
}


class AlignScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Screen(),
        ButtonGrid(),
      ],
    );
  }
}

class ButtonGrid extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return GridView.count(
      primary: false,
      padding: const EdgeInsets.all(20),
      crossAxisSpacing: 8,
      mainAxisSpacing: 8,
      crossAxisCount: 4,
      children: <Widget>[
        NumberCircle('7'),
        NumberCircle('8'),
        NumberCircle('9'),
        ButtonRectangle('+'),
        NumberCircle('4'),
        NumberCircle('5'),
        NumberCircle('6'),
        ButtonRectangle('-'),
        NumberCircle('1'),
        NumberCircle('2'),
        NumberCircle('3'),
        EmptySpace(),
        EmptySpace(),
        NumberCircle('0'),
        EmptySpace(),
        ButtonRectangle('='),
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
              color: Colors.blueGrey[300],
            ),
            child: Align(
              alignment: Alignment.center,
              child: Text(number),
              ))
           );
    
  }
}

class ButtonRectangle extends StatelessWidget {
  
  final String symbol;
  
  ButtonRectangle(this.symbol);
  
  @override
  Widget build(BuildContext context) {
    return Center(
          child: Container(
            width: 100,
            height: 40,
            decoration: BoxDecoration(
              border: Border.all(width: 2),
              shape: BoxShape.rectangle,
              color: Colors.blueGrey[400],
            ),
            child: Align(
              alignment: Alignment.center,
              child: Text(symbol),
              ))
           );
    
  }
}

class Screen extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return Row(
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
              )),
        EmptySpace(),
      ],
    );
    
  }
}

class EmptySpace extends StatelessWidget {
  
  
  @override
  Widget build(BuildContext context) {
    return Center(
          child: Container(
            width: 100,
            height: 100,
            ),
           );
    
  }
}
