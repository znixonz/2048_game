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
        children: <Widget>[_buildLogo(), _buildScore()],
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

  Widget _buildScore() {
    return Container(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(top: 10),
            height: 100,
            width: 100,
            child: Column(
              children: <Widget>[
                Text(
                  "SCORE",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 10.0,
                ),
                Text("2048")
              ],
            ),
            color: Colors.grey,
          ),
          SizedBox(
            width: 20,
          ),
          Container(
            padding: EdgeInsets.only(top: 10),
            child: Column(
              children: <Widget>[
                Text(
                  "HIGH SCORE",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 10,
                ),
                Text("9999")
              ],
            ),
            height: 100,
            width: 100,
            color: Colors.grey,
          )
        ],
      ),
    );
  }
}
