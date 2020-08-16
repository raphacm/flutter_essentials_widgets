import 'package:flutter/material.dart';

Future push(BuildContext context, Widget page) {
  return Navigator.push(
    context,
    MaterialPageRoute(
      builder: (context) {
        return page;
      },
    ),
  );
}

void pop(BuildContext context) {
  return Navigator.pop(context);
}
