import 'package:flutter/material.dart';

import 'detail_screen.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('alip ganteng'),
          centerTitle: true, //bikin title ke tengah
          leading: Icon(Icons.home), //bikin icon atau title di depan
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
              child: Image.network(
                'https://cdn.idntimes.com/content-images/community/2018/11/tempat-mendirikan-tenda-1a46ade4a8c07e6367ed93d728bb0e4f.jpg',
                height: 200,
                width: 200,
                fit: BoxFit.cover,
              ),
            ),
            Text(
              'Unicorn Pixel',
              style: TextStyle(color: Colors.amber),
            ),
            Container(
              child: Row(
                children: [
                  Icon(Icons.directions),
                  Icon(Icons.directions),
                  Icon(Icons.directions),
                  Icon(Icons.directions),
                ],
              ),
            ),
            Column(
              children: [
                Icon(Icons.directions),
                Icon(Icons.directions),
                Icon(Icons.directions),
                Icon(Icons.directions),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                RaisedButton(
                  onPressed: () {
                    //pindah page
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => DetailScreen()));
                  },
                  child: Text(
                    'Tugas Lesson 2',
                    style: TextStyle(color: Colors.white),
                  ),
                  color: Colors.green,
                ),
                RaisedButton(
                  onPressed: () {
                    //pindah page
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => DetailScreen()));
                  },
                  child: Text(
                    'Tugas Lesson 3',
                    style: TextStyle(color: Colors.white),
                  ),
                  color: Colors.green,
                ),
              ],
            )
          ],
        ));
  }
}
