import 'package:flutter/material.dart';
import 'package:notepad/animation/bouncypagetrans.dart';
import 'package:velocity_x/velocity_x.dart';

Container raisedButton(
    {BuildContext context, Widget pageRoute, color, String title,textColor}) {
  return Container(
    width: 400,
    height: 60,
    child: RaisedButton(
        onPressed: () {
          Navigator.push(
            context,
            BouncyPageRout(
              widget: pageRoute,
            ),
          );
        },
        color: color,
        elevation: 5,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(25),
        ),
        child: VxTextBuilder(title).color(textColor).bold.size(18).make()),
  );
}
