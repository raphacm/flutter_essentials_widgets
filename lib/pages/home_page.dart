import 'package:flutter/material.dart';
import 'package:flutter_hello_udemy/pages/hello_page1.dart';

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

  _button(context, String label) {
    return RaisedButton(
      onPressed: () => _onClickOK(context),
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

  void _onClickOK(context) => Navigator.push(context,
          MaterialPageRoute(builder: (BuildContext context) {
        return HelloPage1();
      }));

  _buttons(context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            _button(context, "ListView"),
            _button(context, "Page 2"),
            _button(context, "Page 3"),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            _button(context, "Snack"),
            _button(context, "Dialog"),
            _button(context, "Toast"),
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
