import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Hello Flutter",
        ),
        centerTitle: true,
      ),
      body: _body(),
      drawer: Container(
        color: Colors.yellow,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: null,
        child: Icon(Icons.add),
      ),
    );
  }

  _body() {
    return Container(
      color: Colors.white,
      child: Center(
        child: Text(
          "Hello Flutter",
          style: TextStyle(
            color: Colors.purple,
            fontSize: 30,
            fontWeight: FontWeight.bold,
            fontStyle: FontStyle.italic,
            decoration: TextDecoration.underline,
            decorationColor: Colors.green,
            decorationStyle: TextDecorationStyle.wavy,
          ),
        ),
      ),
    );
  }
}
