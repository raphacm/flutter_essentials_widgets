import 'package:flutter/material.dart';

class HelloPage3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Hello Page 3"),
      ),
      body: _body(context),
    );
  }

  _body(context) {
    return Center(
      child: RaisedButton(
        child: Text("Voltar"),
        onPressed: () => Navigator.pop(context),
      ),
    );
  }
}
