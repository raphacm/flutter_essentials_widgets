import 'package:flutter/material.dart';
import 'package:flutter_hello_udemy/pages/hello_page1.dart';
import 'package:flutter_hello_udemy/pages/hello_page2.dart';
import 'package:flutter_hello_udemy/pages/hello_page3.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Hello Flutter"),
        centerTitle: true,
      ),
      body: _body(context),
      drawer: Container(
        color: Colors.yellow,
      ),
      // floatingActionButton: FloatingActionButton(
      //   onPressed: null,
      //   child: Icon(Icons.add),
      // ),
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

  _body(context) {
    return Container(
      child: Column(
        children: [
          _text(),
          _pageView(),
          _buttons(context),
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

  _button(BuildContext context, String label, Function onPressed) {
    return RaisedButton(
      onPressed: onPressed,
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

  _buttons(context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            _button(context, "ListView",
                () => _onClickNavigator(context, HelloPage1())),
            _button(context, "Page 2",
                () => _onClickNavigator(context, HelloPage2())),
            _button(context, "Page 3",
                () => _onClickNavigator(context, HelloPage3())),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            _button(context, "Snack", _onButtonPressed),
            _button(context, "Dialog", _onButtonPressed),
            _button(context, "Toast", _onButtonPressed),
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

  void _onClickNavigator(context, Widget page) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (BuildContext context) {
          return page;
        },
      ),
    );
  }

  _onButtonPressed() {}
}
