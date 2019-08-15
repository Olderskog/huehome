import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:huehome/domain/room.dart';
import 'package:huehome/ui/widgets/light_circle.dart';
import 'package:logging/logging.dart';

final Logger log = new Logger("RoomListTile");

/// ListTile widget for individual rooms
class RoomListTile extends StatelessWidget {
  final Room room;

  RoomListTile({@required this.room});

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
    return LightCircle(
      colors: room.getColors(),
    );
  }

  Widget _middle(BuildContext context) {
    return Column(
      children: <Widget>[
        Text(room.name, style: Theme.of(context).textTheme.title),
        Text("${room.lights.length} lights", style: Theme.of(context).textTheme.subtitle),
      ],
    );
  }

  final bool t = false;
  Widget _trailing() {
    Color c;
    if (room.getColors().length >= 1) {
      c = room.getColors().first;
    }

    return Container(
      child: Switch.adaptive(
        activeColor: c,
        onChanged: (state) {
          //light.on = state;
        },
        value: math.Random().nextBool() ? false : true,
      ),
    );
  }
}
