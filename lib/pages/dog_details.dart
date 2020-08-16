import 'package:flutter/material.dart';
import 'package:flutter_hello_udemy/model/dog.dart';

class DogDetails extends StatelessWidget {
  final Dog dog;

  DogDetails(this.dog);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(dog.name),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            child: Image.asset(
              dog.url,
              fit: BoxFit.cover,
            ),
          ),
          Text(dog.name,
              style: TextStyle(
                fontSize: 36,
                color: Colors.black87,
              ))
        ],
      ),
    );
  }
}
