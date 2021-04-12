import 'package:flutter/material.dart';

class CircularButton extends StatelessWidget {
  final IconData buttonIcon;
  final Color color;
  final Color icncolor;
  final void Function() buttonAction;

  CircularButton(
      {@required this.buttonIcon,
      @required this.buttonAction,
      this.color = Colors.white,
      this.icncolor = Colors.black});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: color,
        shape: BoxShape.circle,
      ),
      child: IconButton(
          icon: Icon(
            buttonIcon,
            color: icncolor,
            size: 25,
          ),
          onPressed: buttonAction),
    );
  }
}
