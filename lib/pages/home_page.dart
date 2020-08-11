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
      height: double.infinity,
      width: double.infinity,
      color: Colors.yellow,
      child: Column(
        //or Row
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          _button(),
          _button(),
          _button(),
        ],
      ),
    );
  }

  _img() {
    return Image.asset(
      "assets/images/dog1.png",
      fit: BoxFit.cover,
    );
  }

  _button() {
    return RaisedButton(
      onPressed: _onClickOK,
      child: Text(
        "OK",
        style: TextStyle(
          color: Colors.white,
          fontSize: 20,
        ),
      ),
      color: Colors.blue,
    );
  }

  void _onClickOK() => print("I was clicked");
}
