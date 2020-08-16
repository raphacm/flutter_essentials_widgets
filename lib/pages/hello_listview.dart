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

  final dogs = [
    "assets/images/dog1.png",
    "assets/images/dog2.png",
    "assets/images/dog3.png",
    "assets/images/dog4.png",
    "assets/images/dog5.png",
  ];

  _body(BuildContext context) {
    return ListView.builder(
      itemCount: dogs.length,
      itemBuilder: (context, index) {
        return Image.asset(
          dogs[index],
          fit: BoxFit.cover,
          width: 150,
        );
      },
    );
  }
}
