import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final Function resetHandler;

  Result(this.resetHandler);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(children: <Widget>[
        Text("You did it!"),
        TextButton(
          child: Text(
            "Restart Quiz!",
          ),
          onPressed: resetHandler,
        ),
      ]),
    );
  }
}
