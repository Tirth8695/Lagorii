import 'package:flutter/material.dart';
import 'main.dart';

class Category extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          GestureDetector(
            child: Card(
              elevation: 10.0,
              shadowColor: Colors.black,
              color: Colors.black,
              margin: EdgeInsets.symmetric(vertical: 60.0, horizontal: 60.0),
              child: Image.asset(
                'images/4.jpg',
                width: 800.00,
              ),
            ),
          ),
          SizedBox(
            height: 20.00,
            width: 280.00,
            child: Divider(
              color: Colors.blueGrey[500],
            ),
          ),
          GestureDetector(
            child: Card(
              elevation: 10.0,
              color: Colors.black,
              margin: EdgeInsets.symmetric(vertical: 100.0, horizontal: 100.0),
              child: Image.asset(
                'images/2.jpg',
                width: 800.00,
              ),
            ),
          ),
          Text(
            'BOYS',
            style: TextStyle(
              fontSize: 25.00,
              fontWeight: FontWeight.w500,
              color: Colors.deepOrangeAccent,
            ),
          ),
          SizedBox(
            height: 20.00,
            width: 280.00,
            child: Divider(
              color: Colors.blueGrey[500],
            ),
          ),
          GestureDetector(
            child: Card(
              elevation: 10.0,
              color: Colors.black,
              margin: EdgeInsets.symmetric(vertical: 100.0, horizontal: 100.0),
              child: Image.asset(
                'images/3.jpg',
                width: 800.00,
              ),
            ),
          ),
          Text(
            'Girls',
            style: TextStyle(
              fontSize: 25.00,
              fontWeight: FontWeight.w500,
              color: Colors.deepOrangeAccent,
            ),
          ),
          SizedBox(
            height: 20.00,
            width: 280.00,
            child: Divider(
              color: Colors.blueGrey[500],
            ),
          ),
        ],
      ),
    );
  }
}
