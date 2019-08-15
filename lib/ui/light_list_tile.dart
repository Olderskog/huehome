import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:huehome/domain/light.dart';

/// ListTile widget for individual lights
class LightListTile extends StatelessWidget {
  final Light light;

  LightListTile({@required this.light});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 24.0),
      child: Card(
        elevation: 2,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 24.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              _leading(),
              _middle(context),
              _trailing(),
            ],
          ),
        ),
        /*
        onTap: () => {}, // TODO: Toggle the light on/off ?
        onLongPress: () => {}, // TODO: Display the brightness slider ?
           */
      ),
    );
  }

  Widget _leading() {
    return Stack(children: [
      Icon(Icons.lightbulb_outline),
    ]);
  }

  Widget _middle(BuildContext context) {
    return Column(
      children: <Widget>[Text(light.name, style: Theme.of(context).textTheme.title)],
    );
  }

  final bool t = false;
  Widget _trailing() {
    return Container(
      child: Switch.adaptive(
        onChanged: (state) {
          //light.on = state;
        },
        value: math.Random().nextBool() ? false : true,
      ),
    );
  }
}
