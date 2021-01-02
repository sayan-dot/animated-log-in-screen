import 'package:flutter/cupertino.dart';

class BouncyPageRout extends PageRouteBuilder {
  final Widget widget;

  BouncyPageRout({this.widget})
      : super(
          transitionDuration: Duration(milliseconds: 700),
          transitionsBuilder: (BuildContext context,
              Animation<double> animation,
              Animation<double> secAnimation,
              Widget child) {
            animation =
                CurvedAnimation(parent: animation, curve: Curves.elasticInOut);
            return ScaleTransition(
              alignment: Alignment.center,
              scale: animation,
              child: child,
            );
          },
          pageBuilder: (BuildContext context, Animation<double> animation,
              Animation<double> secAnimation) {
            return widget;
          },
        );
}
