import 'package:flutter/material.dart';
import 'package:flutter_hello_udemy/pages/hello_listview.dart';
import 'package:flutter_hello_udemy/pages/hello_page2.dart';
import 'package:flutter_hello_udemy/pages/hello_gridview.dart';
import 'package:flutter_hello_udemy/utils/nav.dart';
import 'package:flutter_hello_udemy/widgets/myButton.dart';
import 'package:fluttertoast/fluttertoast.dart';

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

  _body() {
    return Container(
      child: Column(
        children: [
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

  _buttons() {
    return Builder(builder: (context) {
      return Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              MyButton(
                "ListView",
                onPressed: () => _onClickNavigator(
                  context,
                  HelloListView(),
                ),
                color: Colors.red,
              ),
              MyButton(
                "Page 2",
                onPressed: () => _onClickNavigator(
                  context,
                  HelloPage2(),
                ),
                color: Colors.purple,
              ),
              MyButton(
                "Grid View",
                onPressed: () => _onClickNavigator(
                  context,
                  HelloGridView(),
                ),
                color: Colors.green,
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              MyButton("Snack", onPressed: () => _onSnackbarPressed(context)),
              MyButton("Dialog", onPressed: () => _onDialogPressed(context)),
              MyButton("Toast", onPressed: () => _onToastPressed(context)),
            ],
          ),
        ],
      );
    });
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

  void _onClickNavigator(context, Widget page) async {
    await push(context, page);
  }

  _onSnackbarPressed(context) {
    Scaffold.of(context).showSnackBar(
      SnackBar(
        content: Text("Olá Flutter"),
        action: SnackBarAction(
            label: "OK",
            onPressed: () {
              print("OK");
            }),
      ),
    );
  }

  _onDialogPressed(context) {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) {
        return AlertDialog(
          title: Text("Flutter é muito legal"),
          actions: [
            FlatButton(
              child: Text("Cancelar"),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
            FlatButton(
              child: Text("OK"),
              onPressed: () {
                Navigator.pop(context);
              },
            )
          ],
        );
      },
    );
  }

  _onToastPressed(context) {
    Fluttertoast.showToast(
        msg: "This is Center Short Toast",
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.CENTER,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.red,
        textColor: Colors.white,
        fontSize: 16.0);
  }
}
