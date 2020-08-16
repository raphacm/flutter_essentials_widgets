import 'package:flutter/material.dart';
import 'package:flutter_hello_udemy/model/dog.dart';
import 'package:flutter_hello_udemy/pages/dog_details.dart';
import 'package:flutter_hello_udemy/utils/nav.dart';

class HelloGridView extends StatefulWidget {
  @override
  _HelloGridViewState createState() => _HelloGridViewState();
}

class _HelloGridViewState extends State<HelloGridView> {
  bool isGridView = true;
  String pageTitle = "Grid View";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(pageTitle),
        actions: [
          IconButton(
            icon: Icon(Icons.list),
            onPressed: () {
              setState(() {
                isGridView = false;
                pageTitle = "List View";
              });
            },
          ),
          IconButton(
            icon: Icon(Icons.grid_on),
            onPressed: () {
              setState(() {
                isGridView = true;
                pageTitle = "Grid View";
              });
            },
          )
        ],
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
    if (!isGridView) {
      return ListView.builder(
        itemExtent: 200,
        itemCount: dogs.length,
        itemBuilder: (context, index) {
          return _itemView(dogs, index, context);
        },
      );
    }
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
      ),
      itemCount: dogs.length,
      itemBuilder: (context, index) {
        return _itemView(dogs, index, context);
      },
    );
  }

  _itemView(List<Dog> dogs, int index, context) {
    Dog dog = dogs[index];

    return Container(
      margin: EdgeInsets.all(5),
      child: GestureDetector(
        onTap: () => push(context, DogDetails(dog)),
        child: Stack(
          fit: StackFit.expand,
          children: [
            Image.asset(
              dog.url,
              fit: BoxFit.cover,
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
        ),
      ),
    );
  }
}
