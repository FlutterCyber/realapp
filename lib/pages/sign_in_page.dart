import 'package:flutter/material.dart';

class SignInPage extends StatefulWidget {
  static final String id = "sign_in_page";
  @override
  _SignInPageState createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("Welcome to Sign In Page"),
      ),
    );
  }
}
