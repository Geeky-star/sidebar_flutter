import 'package:flutter/material.dart';

class Home extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text("Welcome to the HomePage", style: TextStyle(color: Colors.black, fontSize: 28.0,fontWeight: FontWeight.bold)),
      ),

    );
  }
}