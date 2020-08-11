import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Hello Flutter"),
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
    return Container(
      margin: EdgeInsets.only(
        top: 20,
        bottom: 20,
      ),
      child: Text(
        "Hello Flutter",
        style: TextStyle(
          color: Colors.blue,
          fontSize: 40,
        ),
      ),
    );
  }

  _body() {
    return SingleChildScrollView(
      child: Column(
        children: [
          _text(),
          _pageView(),
          _buttons(),
          _text(),
          _pageView(),
          _buttons(),
        ],
        mainAxisAlignment: MainAxisAlignment.center,
      ),
    );
    // );
  }

  _img(String imageName) {
    return Image.asset(
      "assets/images/$imageName.png",
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

  _pageView() {
    return Container(
      height: 300,
      margin: EdgeInsets.only(top: 20, bottom: 20),
      child: PageView(
        reverse: false,
        onPageChanged: (value) => print("value >> $value"),
        scrollDirection: Axis.horizontal,
        children: [
          _img("dog1"),
          _img("dog2"),
          _img("dog3"),
          _img("dog4"),
          _img("dog5"),
        ],
      ),
    );
  }
}
