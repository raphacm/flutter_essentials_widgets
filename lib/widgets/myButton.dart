import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final String label;
  final Function onPressed;
  final Color color;

  MyButton(this.label, {@required this.onPressed, this.color = Colors.blue});

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      child: Text(
        label,
        style: TextStyle(
          color: Colors.white,
          fontSize: 14,
        ),
      ),
      color: color,
      onPressed: onPressed,
    );
  }
}
