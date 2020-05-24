import 'package:flutter/material.dart';

class Profile extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text("This is a Profile page", style: TextStyle(color: Colors.black,fontSize: 30, fontWeight: FontWeight.bold)),
      ),

    );
  }
}