import 'package:flutter/material.dart';

class Dog {
  final String name;
  final String url;

  Dog(this.name, this.url);
}

class HelloGridView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Grid View"),
      ),
      body: _body(context),
    );
  }

  final List<Dog> dogs = [
    Dog("Jack Russel", "assets/images/dog1.png"),
    Dog("Labrador", "assets/images/dog2.png"),
    Dog("Pug", "assets/images/dog3.png"),
    Dog("Rottweiler", "assets/images/dog4.png"),
    Dog("Pastor", "assets/images/dog5.png"),
  ];

  _body(BuildContext context) {
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
      ),
      itemCount: dogs.length,
      itemBuilder: (context, index) {
        Dog dog = dogs[index];

        return Stack(
          fit: StackFit.expand,
          children: [
            GestureDetector(
              onTap: () => print("Clicked on ${dog.name}"),
              onTapUp: (details) => print(
                  "Clicked UP on ${dog.name} with ${details.globalPosition}"),
              onTapDown: (details) => print(
                  "Clicked DOWN on ${dog.name} with ${details.globalPosition}"),
              onDoubleTap: () => print("Clicked on ${dog.name}"),
              child: Image.asset(
                dog.url,
                fit: BoxFit.cover,
              ),
            ),
            Container(
              alignment: Alignment.bottomLeft,
              padding: EdgeInsets.all(10),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.black45,
                  borderRadius: BorderRadius.circular(16),
                ),
                padding: EdgeInsets.all(8),
                child: Text(
                  dog.name,
                  style: TextStyle(
                    fontSize: 26,
                    color: Colors.white,
                  ),
                ),
              ),
            )
          ],
        );
      },
    );
  }
}
