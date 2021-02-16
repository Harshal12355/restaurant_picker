import 'package:flutter/material.dart';
import 'main.dart';

class add extends StatefulWidget {
  @override
  _addState createState() => _addState();
}

class _addState extends State<add> {

  var restaurant;
  final restaurantCon = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Add Restaurant"),
        backgroundColor: Colors.red,
      ),
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(20.0),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextField(
                  controller: restaurantCon,
                  decoration: InputDecoration(
                    hintText: "Enter restaurant",
                    hoverColor: Colors.black,
                    fillColor: Colors.purple,
                    focusColor: Colors.green,
                  ),
                  cursorColor: Colors.black,

                ),
                RaisedButton(
                  child: Text(
                    "Submit",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  color: Colors.red,
                  onPressed: () {
                    _sendDataBack(context);
                  },
                ),
              ],
          ),
        ),
      ),
    );
  }

  void _sendDataBack(BuildContext context) {
    String textToSendBack = restaurantCon.text;
    Navigator.pop(context, textToSendBack);
  }

}
