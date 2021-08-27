import 'package:flutter/material.dart';
class SignUpPage extends StatefulWidget {
  static final String id = "sign_up_page";

  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("Welcome to SignUp page"),
      ),
    );
  }
}
