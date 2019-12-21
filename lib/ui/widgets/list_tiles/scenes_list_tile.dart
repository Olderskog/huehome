import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ScenesListTile extends StatelessWidget {
  final List<Color> colors;
  final String text;

  ScenesListTile({@required this.colors, @required this.text});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.0),
          ),
          elevation: 2.0,
          child: Container(
            width: 120.0,
            height: 120.0,
            decoration: BoxDecoration(
              shape: BoxShape.rectangle,
              borderRadius: BorderRadius.circular(15.0),
              gradient: LinearGradient(
                begin: Alignment(0.0, -0.8),
                tileMode: TileMode.clamp,
                colors: colors.take(3).toList(), /*center: Alignment(0.0, 0.0), radius: 0.7, focalRadius: 0.3*/
              ),
            ),
          ),
        ),
        Text(text)
      ],
    );
  }
}
