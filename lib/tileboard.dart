import 'package:flutter/material.dart';
import 'tile.dart';

class TileBoard extends StatelessWidget {
  final List<int> numberoftile;
  final double tilesize = 72.5;

  TileBoard({Key key, @required this.numberoftile}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Widget> children = new List();
    children.add(_buildTileBoard());
    // _buildTile is a list, there addAll is called
    children.addAll(_buildTile());
    return Center(
      child: Container(
        width: 330.0,
        height: 330.0,
        decoration: BoxDecoration(
            color: Color(0xffbbada3),
            borderRadius: BorderRadius.all(Radius.circular(5.0))),
        padding: EdgeInsets.all(4.0),
        margin: EdgeInsets.symmetric(vertical: 30.0),
        child: Stack(
          children: children,
        ),
      ),
    );
  }

  List<Widget> _buildTile() {
    List<Widget> children = new List();
    for (int tilepos = 0; tilepos < numberoftile.length; tilepos++) {
      if (numberoftile[tilepos] > 0) {
        children.add(Positioned(
          top: (tilepos / 4).floor() * (tilesize + 8),
          left: tilepos % 4 * (tilesize + 8),
          child: Tile(
            tilenumber: numberoftile[tilepos],
          ),
        ));
      }
    }
    return children;
  }

  Widget _buildTileBoard() {
    return Column(
      children: <Widget>[
        _buildColumn(),
        _buildColumn(),
        _buildColumn(),
        _buildColumn()
      ],
    );
  }

  Widget _buildColumn() {
    return Row(
      children: <Widget>[
        _buildTileCell(),
        _buildTileCell(),
        _buildTileCell(),
        _buildTileCell(),
      ],
    );
  }

  Widget _buildTileCell() {
    return Container(
      width: tilesize,
      height: tilesize,
      margin: EdgeInsets.all(4.0),
      decoration: BoxDecoration(
          color: Color(0xffd5cbc0),
          borderRadius: BorderRadius.all(Radius.circular(5.0))),
    );
  }
}
