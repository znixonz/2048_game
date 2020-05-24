import 'package:flutter/material.dart';

class ScoreTile extends StatelessWidget {
  final int score, highscore;

  ScoreTile({Key key, @required this.score, @required this.highscore})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // height: 120.0,
      // color: Colors.red,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[_buildLogo(), _buildScorePanel()],
      ),
    );
  }

  Widget _buildLogo() {
    return Container(
      margin: EdgeInsets.only(left: 10.0),
      height: 140,
      width: 150,
      color: Colors.yellow,
      padding: EdgeInsets.fromLTRB(25, 40, 10, 40),
      child: Text(
        "2048",
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 45.0,
          color: Colors.white,
        ),
      ),
    );
  }

  Widget _buildScorePanel() {
    return Container(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          _buildScore("Score", 2048),
          SizedBox(
            width: 20,
          ),
          _buildScore("HIGH SCORE", 9999)
        ],
      ),
    );
  }

  Widget _buildScore(String title, int score) {
    return Container(
      padding: EdgeInsets.only(top: 10),
      height: 100,
      width: 100,
      child: Column(
        children: <Widget>[
          Text(
            "$title",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 10.0,
          ),
          Text("$score")
        ],
      ),
      color: Colors.grey,
    );
  }
}
