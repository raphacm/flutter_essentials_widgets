import 'package:flutter/material.dart';
import 'package:flutter_hello_udemy/pages/hello_gridview.dart';
import 'package:flutter_hello_udemy/pages/hello_listview.dart';
import 'package:flutter_hello_udemy/pages/hello_page2.dart';

class MenuOptions {
  String option;
  Widget widget;

  MenuOptions(this.option, this.widget);
}

class DrawerList extends StatelessWidget {
  final List<MenuOptions> options = [
    MenuOptions("List View", HelloListView()),
    MenuOptions("Page 2", HelloPage2()),
    MenuOptions("Grid View", HelloGridView()),
  ];

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          SizedBox(
            height: 40,
          ),
          Text(
            "Available pages",
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemBuilder: (context, index) {
                return ListTile(
                  leading: Icon(Icons.pages),
                  title: Text(options[index].option),
                  subtitle: Text("Click to navigate"),
                  trailing: Icon(Icons.arrow_right),
                  onTap: () {
                    Navigator.pop(context);
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return options[index].widget;
                        },
                      ),
                    );
                  },
                );
              },
              itemCount: options.length,
            ),
          ),
        ],
      ),
    );
  }
}
