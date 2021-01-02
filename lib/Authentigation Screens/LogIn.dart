import 'package:flutter/material.dart';
import 'package:notepad/Authentigation%20Screens/signUp.dart';
import 'package:notepad/animation/bouncypagetrans.dart';
import 'package:notepad/animation/fadeanimation.dart';
import 'package:notepad/widgets/VxTextsHeaders.dart';
import 'package:notepad/widgets/customRaisedButton.dart';
import 'package:notepad/widgets/textformField.dart';
import 'ForgotPassword.dart';

class LogIn extends StatefulWidget {
  @override
  _LogInState createState() => _LogInState();
}

class _LogInState extends State<LogIn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: true,
      body: SafeArea(
        child: Container(
          width: double.infinity,
          padding: EdgeInsets.fromLTRB(30.0, 100.0, 30.0, 20.0),
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
                      headerTitle("Hello,"),
                    ),
                    FadeAnimation(
                      2.0,
                      headerSubTitle("Log in to continue"),
                    ),
                  ],
                ),
                SizedBox(height: 65),
                Column(
                  children: [
                    FadeAnimation(
                      3.0,
                      buildTextField(labelText: "Email"),
                    ),
                    SizedBox(height: 40),
                    FadeAnimation(
                      3.5,
                      buildTextField(labelText: "Password", obscureText: true),
                    ),
                    SizedBox(height: 10.0),
                    Container(
                      alignment: Alignment.centerRight,
                      child: FadeAnimation(
                        4.0,
                        InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              BouncyPageRout(
                                widget: ForgotPassword(),
                              ),
                            );
                          },
                          child: Text(
                            'Forgot Password?',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.deepOrange,
                                fontSize: 14),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 40),
                    FadeAnimation(
                      4.5, raisedButton(
                       context: context,
                       //TODO: LOGN PAGE KA auth ROUTE LAGANE HY
                       color: Colors.deepOrange,
                        title: "Log In",
                        textColor: Colors.white,
                      ),                     
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    FadeAnimation(
                      5.0,
                      raisedButton(
                        context:context,
                        pageRoute: SignUp(),
                        color: Colors.white,
                        title:"SignUp"
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
