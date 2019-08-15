import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:huehome/domain/light.dart';
import 'package:uuid/uuid.dart';

class Room {
  final String id = Uuid().v4();

  String name;
  RoomType type;

  List<Light> lights;

  Room({@required this.name, this.lights = const [], this.type = RoomType.UNKNOWN});

  List<Color> getColors() {
    final c = lights.map((light) => light.getColor());
    return c.toList();
  }
}

enum RoomType {
  UNKNOWN,
  LIVING_ROOM,
  BEDROOM,
  OFFICE,
  HALLWAY,
  TV_ROOM,
  KITCHEN,
  BATHROOM,
  PORCH,
  GARAGE,
}

class RoomIcons {
  //static const t = const Icon(Icons.off);
}
