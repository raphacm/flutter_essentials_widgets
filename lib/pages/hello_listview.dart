import 'package:flutter/material.dart';

class HelloListView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("List View"),
      ),
      body: _body(context),
    );
  }

  _body(BuildContext context) {
    return ListView(
      itemExtent: 200,
      children: [
        Image.asset(
          "assets/images/dog1.png",
          fit: BoxFit.cover,
        ),
        Image.asset(
          "assets/images/dog2.png",
          fit: BoxFit.cover,
        ),
        Image.asset(
          "assets/images/dog3.png",
          fit: BoxFit.cover,
        ),
        Image.asset(
          "assets/images/dog4.png",
          fit: BoxFit.cover,
        ),
        Image.asset(
          "assets/images/dog5.png",
          fit: BoxFit.cover,
        ),
      ],
    );
  }
}
