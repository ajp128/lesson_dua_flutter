import 'package:flutter/material.dart';

import 'detail_screen.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Widget'),
        // centerTitle: true,
        leading: Icon(Icons.home),
      ),
      body: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Container(
            color: Colors.red,
            child: Row(
              children: [
                Icon(Icons.directions),
                Icon(Icons.directions),
                Icon(Icons.directions),
                Icon(Icons.directions),
              ],
            ),
          ),
          Container(
            color: Colors.blue,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(Icons.directions),
                Icon(Icons.directions),
                Icon(Icons.directions),
                Icon(Icons.directions),
              ],
            ),
            //button
          ),
          RaisedButton(
            onPressed: () {
              //pindah page
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => DetailScreen()));
            },
            child: Text(
              'Tombol raised',
              style: TextStyle(color: Colors.white),
            ),
            color: Colors.green,
          ),
        ],
      ),
    );
  }
}
