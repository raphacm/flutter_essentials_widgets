import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: _text(),
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

  _text() {
    return Text(
      "Hello Flutter",
      style: TextStyle(
        color: Colors.blue,
        fontSize: 40,
      ),
    );
  }

  _body() {
    return Container(
      color: Colors.white,
      child: Column(
        children: [_text(), _img(), _buttons()],
        mainAxisAlignment: MainAxisAlignment.center,
      ),
    );
  }

  _img() {
    return Image.asset(
      "assets/images/dog1.png",
      fit: BoxFit.cover,
    );
  }

  _button(String label) {
    return RaisedButton(
      onPressed: _onClickOK,
      child: Text(
        label,
        style: TextStyle(
          color: Colors.white,
          fontSize: 14,
        ),
      ),
      color: Colors.blue,
    );
  }

  void _onClickOK() => print("I was clicked");

  _buttons() {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            _button("ListView"),
            _button("Page 2"),
            _button("Page 3"),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            _button("Snack"),
            _button("Dialog"),
            _button("Toast"),
          ],
        ),
      ],
    );
  }
}
