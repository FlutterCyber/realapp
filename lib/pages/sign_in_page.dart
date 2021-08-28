import 'package:flutter/material.dart';
import 'package:realapp/pages/home_page.dart';
import 'package:realapp/pages/sign_up_page.dart';

class SignInPage extends StatefulWidget {
  static final String id = "sign_in_page";

  @override
  _SignInPageState createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  TextEditingController emailcontroller = new TextEditingController();
  TextEditingController passwordcontroller = new TextEditingController();

  doSignIn() {
    String email = emailcontroller.text;
    String password = passwordcontroller.text;
    if (email.isNotEmpty && password.isNotEmpty) {
      Navigator.pushReplacementNamed(context, HomePage.id);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Center(
          child: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Instagram",
                  style: TextStyle(fontSize: 45, fontFamily: "Billabong"),
                ),
                //Bu container emailniki
                Container(
                  margin: EdgeInsets.only(left: 20, right: 20, top: 15),
                  height: 48,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: Colors.grey[200],
                  ),
                  child: TextField(
                    //emailga yozgan textimizni o'qib olish uchun
                    controller: emailcontroller,
                    style: TextStyle(fontSize: 16),
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.all(10),
                      border: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.teal)),
                      hintText: "Email",
                      hintStyle: TextStyle(color: Colors.grey),
                    ),
                  ),
                ),
                //Bu container passwordniki
                Container(
                  margin: EdgeInsets.only(left: 20, right: 20, top: 15),
                  height: 48,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: Colors.grey[200],
                  ),
                  child: TextField(
                    //bu passwordga yozgan textimizni o'qib olish uchun kerak
                    controller: passwordcontroller,
                    //obscureText - passwordni **** shaklida ko'rinib turishi uchun kk
                    obscureText: true,
                    style: TextStyle(fontSize: 16),
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.all(10),
                      border: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.teal)),
                      hintText: "Password",
                      hintStyle: TextStyle(color: Colors.grey),
                    ),
                  ),
                ),
                //Bu container Sign in buttonniki
                Container(
                  margin: EdgeInsets.only(left: 20, right: 20, top: 15),
                  width: double.infinity,
                  height: 48,
                  child: FlatButton(
                    onPressed: () {
                      doSignIn();
                    },
                    color: Colors.blue,
                    textColor: Colors.white,
                    child: Text(
                      "Sign in",
                      style: TextStyle(fontSize: 16),
                    ),
                  ),
                ),
                //Bu container Sign up gesture detectorniki
                Container(
                  margin: EdgeInsets.only(left: 20, right: 20, top: 15),
                  height: 50,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        "Don't have an account?",
                        style: TextStyle(color: Colors.grey, fontSize: 16),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      GestureDetector(
                        child: Text(
                          "Sign up",
                          style: TextStyle(color: Colors.black, fontSize: 16),
                        ),
                        onTap: (){
                          Navigator.pushReplacementNamed(context, SignUpPage.id);
                        },
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
