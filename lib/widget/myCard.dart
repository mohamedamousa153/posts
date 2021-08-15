import 'package:flutter/material.dart';

class myCard extends StatefulWidget {
  String content;
  myCard(
      {
        this.content= "-"
      }
      );

  @override
  _MyCardState createState() => _MyCardState();
}

class _MyCardState extends State<myCard> {
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        height: 80,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Center(child: Text(widget.content)),
        ),
      ),
    );
  }
}
