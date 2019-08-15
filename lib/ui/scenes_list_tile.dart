import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ScenesListTile extends StatelessWidget {
  final Color color;
  final String text;

  ScenesListTile({@required this.color, @required this.text});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Card(
          elevation: 2.0,
          color: color,
          child: Container(
            width: 80.0,
            height: 80.0,
          ),
        ),
        Text(text)
      ],
    );
  }
}
