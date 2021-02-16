import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: RPicker(),
    );
  }
}

class RPicker extends StatefulWidget {
  @override
  _RPickerState createState() => _RPickerState();
}

class _RPickerState extends State<RPicker> {

  List<String> restaurants = [
    "Govindas",
    "Mcdonald\'s",
    "Mumbai Express",
    "Chillis",
    "Buffalo Wild Wings",
    "Taco Bell",
    "Five Guys"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                  "Where are you going to eat today:",
                style: TextStyle(

                ),
              ),
              Text(
                  restaurants[1],
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 40.0,
                ),
              ),
              SizedBox(height: 30.0,),
              RaisedButton(
                child: Text(
                    "Randomize",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                color: Colors.red,
                onPressed: () {
                    print("Randomized");
                },
              ),
            ],
          ),
      ),
    );
  }
}


