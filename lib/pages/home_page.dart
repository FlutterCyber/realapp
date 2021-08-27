import 'package:flutter/material.dart';
class HomePage extends StatefulWidget {
  static final String id = "home_page";

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Instagram",style: TextStyle(color:Colors.white, fontFamily: "Billabong",fontSize: 30),),
      ),
      body: Center(
        child: Text("Welcome to Instagram",style: TextStyle(fontSize: 25,),),
      ),

    );
  }
}
