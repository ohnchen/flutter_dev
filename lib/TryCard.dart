import 'package:flutter/material.dart';

class TryCard extends StatelessWidget {
  final String tryCardText;

  TryCard(this.tryCardText);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        right: 10,
        top: 20,
      ),
      width: 100,
      decoration: BoxDecoration(
        color: Colors.white,
        shape: BoxShape.rectangle,
        borderRadius: BorderRadius.all(
          Radius.circular(10),
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.grey,
            offset: Offset(3, 3),
          )
        ],
      ),
      child: Center(
          child: Text(
        tryCardText,
        style: TextStyle(
          fontWeight: FontWeight.bold,
          color: Colors.blue,
        ),
      )),
    );
  }
}
