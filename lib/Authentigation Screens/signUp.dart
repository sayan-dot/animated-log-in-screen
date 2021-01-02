import 'package:flutter/material.dart';
import 'package:notepad/animation/bouncypagetrans.dart';
import 'package:notepad/animation/fadeanimation.dart';
import 'package:notepad/widgets/VxTextsHeaders.dart';
import 'package:notepad/widgets/customRaisedButton.dart';
import 'package:notepad/widgets/textformField.dart';

import 'LogIn.dart';

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            icon: Icon(Icons.arrow_back_ios, color: Colors.black),
            onPressed: () {
              Navigator.push(
                context,
                BouncyPageRout(
                  widget: LogIn(),
                ),
              );
            }),
        backgroundColor: Colors.white10,
        elevation: 0.0,
      ),
      resizeToAvoidBottomPadding: true,
      body: SafeArea(
        child: Container(
          width: double.infinity,
          padding: EdgeInsets.fromLTRB(30.0, 50.0, 30.0, 20.0),
          height: MediaQuery.of(context).size.height,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    FadeAnimation(
                      1.0,
                      headerTitle("Welcome !"),
                    ),
                    FadeAnimation(
                      2.0,
                      headerSubTitle("New here? SignUp."),
                    ),
                  ],
                ),
                SizedBox(height: 65),
                Column(
                  children: [
                    FadeAnimation(
                      3.0,
                      buildTextField(labelText: "User Id"),
                    ),
                    SizedBox(height: 40),
                    FadeAnimation(
                      3.5,
                      buildTextField(labelText: "Email"),
                    ),
                    SizedBox(height: 40),
                    FadeAnimation(
                      4.0,
                      buildTextField(labelText: "Password", obscureText: true),
                    ),
                    SizedBox(height: 40),
                    FadeAnimation(
                      4.5,
                      raisedButton(
                        context: context,
                        //TODO: Sign Up PAGE KA auth ROUTE LAGANE HY
                        color: Colors.deepOrange,
                        title: "Sign Up",
                        textColor: Colors.white,
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
