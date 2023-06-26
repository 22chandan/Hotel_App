import 'package:flutter/material.dart';

class MyContainer extends StatefulWidget {
  final int index;
  final int selectedIndex;
  final Function(int) onContainerTapped;
  final IconData ic;
  final String name;

  MyContainer({
    required this.index,
    required this.selectedIndex,
    required this.onContainerTapped,
    required this.ic,
    required this.name,
  });

  @override
  _MyContainerState createState() => _MyContainerState();
}

class _MyContainerState extends State<MyContainer> {
  @override
  Widget build(BuildContext context) {
    bool isSelected = widget.index == widget.selectedIndex;

    return GestureDetector(
      onTap: () {
        widget.onContainerTapped(widget.index);
      },
      child: Container(
        width: isSelected ? 95 : 90,
        decoration: BoxDecoration(
          border: Border.all(width: 1, color: Colors.black26),
          borderRadius: BorderRadius.circular(30),
          color: isSelected ? Color.fromARGB(255, 78, 164, 234) : Colors.white,
          boxShadow: isSelected
              ? [
                  BoxShadow(
                    color: const Color.fromARGB(255, 113, 183, 241)
                        .withOpacity(0.3),
                    offset: Offset(2, 2),
                    blurRadius: 5,
                    spreadRadius: 2.5,
                  ),
                ]
              : [
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
              color: isSelected ? Colors.white : Colors.black,
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              widget.name,
              style: TextStyle(color: isSelected ? Colors.white : Colors.black),
            ),
          ],
        ),
      ),
    );
  }
}
