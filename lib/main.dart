import 'dart:math';
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
      debugShowCheckedModeBanner: false,
    );
  }
}

class RPicker extends StatefulWidget {
  @override
  _RPickerState createState() => _RPickerState();
}

class _RPickerState extends State<RPicker> {
  int currentIndex;
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
              Padding(padding: EdgeInsets.only(top: 10.0)),
              if (currentIndex != null)
                Text(
                  restaurants[currentIndex],
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 40.0,
                  ),
                ),
              SizedBox(height: 10.0,),
              RaisedButton(
                child: Text(
                    "Randomize",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                color: Colors.red,
                onPressed: () {
                    updateIndex();
                    print("Randomized");
                    print(restaurants[currentIndex]);
                },
              ),
              SizedBox(height: 10.0,),
              RaisedButton(
                child: Text(
                  "Reset",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                color: Colors.red,
                onPressed: () {
                  resetIndex();
                  print("Reset");
                  print(currentIndex);
                },
              ),
            ],
          ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.red,
        child: Icon(Icons.add),
        onPressed: () {

        },
      ),
    );
  }

  void updateIndex(){
    final random = Random();
    final index = random.nextInt(restaurants.length);
    setState(() {
      currentIndex = index;
    });
  }
  void resetIndex(){
    setState(() {
      currentIndex = null;
    });
  }
}


