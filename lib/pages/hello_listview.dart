import 'package:flutter/material.dart';

class Dog {
  final String name;
  final String url;

  Dog(this.name, this.url);
}

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

  List<Dog> dogs = [
    Dog("Jack Russel", "assets/images/dog1.png"),
    Dog("Labrador", "assets/images/dog2.png"),
    Dog("Pug", "assets/images/dog3.png"),
    Dog("Rottweiler", "assets/images/dog4.png"),
    Dog("Pastor", "assets/images/dog5.png"),
  ];

  _body(BuildContext context) {
    return ListView.builder(
      itemCount: dogs.length,
      itemExtent: 200,
      itemBuilder: (context, index) {
        Dog dog = dogs[index];

        return Stack(
          fit: StackFit.expand,
          children: [
            Image.asset(
              dog.url,
              fit: BoxFit.cover,
            ),
            Text(
              dog.name,
              style: TextStyle(
                fontSize: 26,
                color: Colors.white,
              ),
            )
          ],
        );
      },
    );
  }
}
