import 'package:flutter/material.dart';

class MyContainer1 extends StatefulWidget {
  final IconData ic;
  final String name;

  MyContainer1({
    required this.ic,
    required this.name,
  });

  @override
  _MyContainer1State createState() => _MyContainer1State();
}

class _MyContainer1State extends State<MyContainer1> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        width: 90,
        decoration: BoxDecoration(
          border: Border.all(width: 1, color: Colors.black26),
          borderRadius: BorderRadius.circular(30),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.2),
              offset: Offset(
                0,
                5,
              ),
              blurRadius: 5,
              spreadRadius: 1,
            ),
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(
              widget.ic,
              size: 30,
              color: Colors.black,
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              widget.name,
              style: TextStyle(color: Colors.black),
            ),
          ],
        ),
      ),
    );
  }
}
