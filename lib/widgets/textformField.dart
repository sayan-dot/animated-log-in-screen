import 'package:flutter/material.dart';

buildTextField(
    {@required String labelText,
    bool obscureText = false,
    Widget suffixIcon,
    TextEditingController controller,
    String Function(String) validator}) {
  return TextFormField(
    validator: validator,
    controller: controller,
    decoration: InputDecoration(
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(25),
          borderSide: BorderSide(color: Colors.white10),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(25),
          borderSide: BorderSide(color: Colors.deepOrange),
        ),
        labelText: labelText,
        labelStyle:
            TextStyle(fontWeight: FontWeight.bold, color: Colors.deepOrange),
        suffixIcon: suffixIcon),
    keyboardType: TextInputType.emailAddress,
    obscureText: obscureText,
  );
}
