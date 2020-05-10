import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Container(
              alignment: Alignment.bottomCenter,
              height: 80.0,
              color: Color(0xFFA2907D),
              child: Padding(
                padding: EdgeInsets.only(bottom: 10.0),
                child: Text(
                  '2048',
                  style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.w900,
                      color: Colors.white),
                ),
              )),
          Expanded(
              child: Column(
            children: <Widget>[
              // Score container
              Container(
                alignment: Alignment.topCenter,
                margin: EdgeInsets.only(top: 15),
                height: 80,
                width: 200,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Color(0xFFA2907D),
                ),
                // Inside container
                child: Padding(
                  padding: EdgeInsets.only(top: 10),
                  child: Column(
                    children: [
                      Text(
                        'SCORE',
                        style: TextStyle(
                            fontStyle: FontStyle.italic,
                            fontSize: 20.0,
                            color: Colors.white,
                            fontWeight: FontWeight.w900),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 10),
                        child: Text(
                          '69',
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                            fontWeight: FontWeight.w900,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 10),
                height: 330,
                width: 365,
                decoration: BoxDecoration(
                  color: Color(0xFFA2907D),
                ),
              ),
              // Bottom button
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  // Restart button
                  Container(
                    margin: EdgeInsets.only(top: 10),
                    height: 70,
                    width: 80,
                    decoration: BoxDecoration(
                        color: Color(0xFFA2907D),
                        borderRadius: BorderRadius.circular(20)),
                    child: FlatButton(
                      onPressed: () => {},
                      child: Icon(
                        Icons.refresh,
                        size: 40,
                        color: Colors.white60,
                      ),
                    ),
                  ),
                  // High score
                  Container(
                    margin: EdgeInsets.only(top: 10),
                    height: 70,
                    width: 140,
                    decoration: BoxDecoration(
                        color: Color(0xFFA2907D),
                        borderRadius: BorderRadius.circular(20)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Container(
                          child: Text(
                            'HIGH_SCORE',
                            style: TextStyle(
                                fontSize: 15,
                                color: Colors.white,
                                fontWeight: FontWeight.w900),
                          ),
                        ),
                        Container(
                          child: Text(
                            '6969',
                            style: TextStyle(
                                fontSize: 20,
                                color: Colors.white,
                                fontWeight: FontWeight.w900),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              )
            ],
          ))
        ],
      ),
    );
  }
}
