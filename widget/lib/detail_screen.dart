import 'package:flutter/material.dart';

class DetailScreen extends StatefulWidget {
  final String title;

  const DetailScreen({Key key, this.title}) : super(key: key);
  @override
  _DetailScreenState createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(widget.title ?? 'lesson 2'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: Colors.black38),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.black26,
                          blurRadius: 10,
                          spreadRadius: 2)
                    ],
                    borderRadius: BorderRadius.all(Radius.circular(5))),
                height: 250,
                width: 500,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
