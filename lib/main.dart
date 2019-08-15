import 'package:flutter/material.dart';
import 'package:huehome/data/light_repository.dart';
import 'package:huehome/data/room_repository.dart';
import 'package:huehome/ui/hue_home_theme.dart';
import 'package:logging/logging.dart';
import 'package:provider/provider.dart';

import 'ui/home_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    _configureLogging();

    return MultiProvider(
      providers: [
        lightRepoProvider(),
        roomRepoProvider(),
      ],
      child: MaterialApp(
        title: 'HueHome',
        theme: hueHomeTheme,
        home: MyHomePage(title: 'Home'),
      ),
    );
  }
}

void _configureLogging() {
  Logger.root.level = Level.ALL;
  Logger.root.onRecord.listen((LogRecord rec) {
    print('${rec.loggerName} ${rec.level.name} ${rec.message}');
    if (rec.error != null) print(rec.error);
    if (rec.stackTrace != null) print(rec.stackTrace);
  });
}
