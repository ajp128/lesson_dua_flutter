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
                    border: Border.all(color: Colors.orange[900], width: 5),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.orange[700],
                          blurRadius: 20,
                          spreadRadius: 2)
                    ],
                    borderRadius: BorderRadius.all(Radius.circular(5))),
                width: 500,
                padding: const EdgeInsets.only(
                    top: 10.0, left: 10.0, bottom: 20.0, right: 10.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Image.network(
                      'https://static.wikia.nocookie.net/kimetsu-no-yaiba/images/f/fd/Kyojuro_anime.png/revision/latest/scale-to-width-down/350?cb=20191117152140',
                      width: 280,
                      height: 400,
                      fit: BoxFit.cover,
                    ),
                    Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Name',
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold)),
                          Text('Kanji',
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold)),
                          Text('Gender',
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold)),
                          Text('Date of Birth',
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold)),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(': Kyojuro Rengoku',
                              style: TextStyle(fontSize: 20)),
                          Text(': 煉獄 杏寿郎', style: TextStyle(fontSize: 20)),
                          Text(': Male', style: TextStyle(fontSize: 20)),
                          Text(': 10th May', style: TextStyle(fontSize: 20)),
                        ],
                      )
                    ]),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        RaisedButton(
                          onPressed: () {},
                          color: Colors.red[900],
                          child: Text(
                            'Save Me!',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                        RaisedButton(
                          onPressed: () {},
                          color: Colors.red[900],
                          child: Text(
                            'Let Me GO!',
                            style: TextStyle(color: Colors.white),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
