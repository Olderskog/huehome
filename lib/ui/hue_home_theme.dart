import 'dart:io';

import 'package:flutter/material.dart';

final ThemeData hueHomeTheme = _buildHueHomeTheme();

ThemeData _buildHueHomeTheme() {
  return ThemeData(
    platform: (Platform.isIOS || Platform.isMacOS) ? TargetPlatform.iOS : TargetPlatform.android,
    primarySwatch: Colors.indigo,
    appBarTheme: AppBarTheme(
      color: Colors.white30,
      elevation: 0.0,
      textTheme: TextTheme(
        title: TextStyle(
          color: Colors.black87,
          fontSize: 24,
          fontWeight: FontWeight.bold,
          letterSpacing: -1.0,
        ),
        subhead: TextStyle(
          color: Colors.black54,
          fontSize: 20,
          fontWeight: FontWeight.bold,
          letterSpacing: -4.0,
        ),
        subtitle: TextStyle(
          color: Colors.grey,
          fontSize: 18,
          letterSpacing: -1.0,
        ),
      ),
    ),
  );
}
