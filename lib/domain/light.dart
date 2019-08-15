import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Light {
  final String id;

  String name = "";

  bool on = false; // true - false
  int saturation = 256; // 0 - 256
  int brightness = 256; // 0 - 256
  int hue = 10000; // 0 - 65535

  Light({@required this.id, this.name, this.on, this.saturation, this.brightness, this.hue});

  Color getColor() => _getHslColor().toColor();

  HSLColor _getHslColor() => HSLColor.fromAHSL(1, ((hue / 65535) * 256), saturation / 256, brightness / 256);
}
