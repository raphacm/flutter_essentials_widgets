import 'package:flutter/material.dart';
import 'package:flutter_hello_udemy/widgets/myButton.dart';

class HelloPage2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Hello Page 2"),
      ),
      body: _body(context),
    );
  }

  _body(context) {
    return Center(
      child: MyButton(
        "Voltar",
        onPressed: () => Navigator.pop(context),
      ),
    );
  }
}
