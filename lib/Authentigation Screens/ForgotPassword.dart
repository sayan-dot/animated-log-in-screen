import 'package:flutter/material.dart';
import 'package:notepad/animation/bouncypagetrans.dart';
import 'package:notepad/animation/fadeanimation.dart';
import 'package:notepad/widgets/VxTextsHeaders.dart';
import 'package:notepad/widgets/customRaisedButton.dart';
import 'package:notepad/widgets/textformField.dart';


import 'LogIn.dart';

class ForgotPassword extends StatefulWidget {
  @override
  _ForgotPasswordState createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
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
                      headerTitle("Forgot Password?"),
                    ),
                    FadeAnimation(
                      2.0,
                      headerSubTitle("Reset Here."),
                    ),
                  ],
                ),
                SizedBox(height: 65),
                Column(
                  children: [
                    FadeAnimation(
                      2.5,
                      buildTextField(labelText: "Email"),
                    ),
                    SizedBox(height: 50),
                    FadeAnimation(
                      3.0,
                      raisedButton(
                        context: context,
                        color: Colors.deepOrange,
                        title: "Submit",
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
