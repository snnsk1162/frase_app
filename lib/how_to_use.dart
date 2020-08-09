
import 'package:flutter/material.dart';

class HowToUse extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Color.fromRGBO(246, 183, 183, 1.0),
        title: Text("How to Use",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color:Color.fromRGBO(255, 252, 239, 1.0))),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(left:50,right:50),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text("How to use"),
              Text("xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx"
                  "xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx"
                  "xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx"
                  "xxxxxxxxxxxxxxxxxxxxxx"),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
          backgroundColor: Color.fromRGBO(246, 183, 183, 1.0),
          child: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          }
      ),
    );
  }
}