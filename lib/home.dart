import 'package:flutter/material.dart';
import 'widget/tileboard.dart';
import 'widget/scoretile.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

//Test
class _HomePageState extends State<HomePage> {
  int score;
  int best;
  List<int> tile;

  @override
  void initState() {
    super.initState();
    setState(() {
      score = 0;
      best = 0;
      tile = [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('2048'),
        backgroundColor: Color(0xff3c3c3a),
      ),
      body: Container(
        color: Color(0xfffaf8ef),
        child: GestureDetector(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              ScoreTile(score: 2048, highscore: 9999),
              TileBoard(
                numberoftile: tile,
              )
            ],
          ),
        ),
      ),
    );
  }
}
