import 'package:flutter/material.dart';

void main (){
  runApp(Misbaha());
}

class Misbaha extends StatefulWidget {
  @override
  _MisbahaState createState() => _MisbahaState();
}

class _MisbahaState extends State<Misbaha> {

  int counter = 0;
  void rest (){
    setState(() {
      counter = 0 ;
    });
  }
  void increment (){
    setState(() {
      counter++ ;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Misbaha',
      debugShowCheckedModeBanner: false,
      //theme: ThemeData.dark(),
      home: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.black38,
//            appBar: AppBar(
//              backgroundColor: Color(0xFFEE3226),
//              title: Text('Misbaha'),
//            ),
          body: SizedBox(
            width: double.infinity,
            height: double.infinity,
            child: FlatButton(
              color: Colors.black38,
              onPressed: increment,
              child: Text('$counter',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 80  ,
                ),
              ),
            ),
          ),
          floatingActionButton: Align(
            alignment: Alignment(-0.9 , -0.9),
            child: FloatingActionButton(
              backgroundColor: Colors.black38,
              onPressed: rest,
              child: Icon(Icons.replay),
            ),
          ),
        ),
      ),
    );
  }
}
