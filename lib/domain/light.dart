import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

/// Class representing a PhilipsHue light
class Light {
  // The Philips lights operate with a hue range of 0 - 65_535
  static const int _MAX_HUE_PHILIPS = 65535;
  static const int _MAX_SAT_PHILIPS = 256;

  // Brightness is the philips term for lightness in the HSLColor class
  static const int _MAX_BRI_PHILIPS = 256;

  // The HSLColor class has a hue range of 0 - 256
  static const int _MAX_HUE_HSL = 256;

  final String id;

  String name = "";

  bool on = false; // true - false
  int saturation = _MAX_SAT_PHILIPS; // 0 - 256
  int brightness = _MAX_BRI_PHILIPS; // 0 - 256
  int hue = 10000; // 0 - 65535

  Light({@required this.id, this.name, this.on, this.saturation, this.brightness, this.hue});

  // TODO: Factory constructor taking a color as input? Then the caller would not be forced to use hsl values

  Color getColor() => _getHslColor().toColor();
  void setColor(Color color) {
    final hslColor = HSLColor.fromColor(color);

    this.saturation = (hslColor.saturation * _MAX_SAT_PHILIPS).toInt();
    this.brightness = (hslColor.lightness * _MAX_BRI_PHILIPS).toInt();
    this.hue = (hslColor.hue * _MAX_HUE_PHILIPS) ~/ _MAX_HUE_HSL;
  }

  HSLColor _getHslColor() => HSLColor.fromAHSL(
      1, ((hue / _MAX_HUE_PHILIPS) * _MAX_HUE_HSL), (saturation / _MAX_SAT_PHILIPS), (brightness / _MAX_BRI_PHILIPS));
}
