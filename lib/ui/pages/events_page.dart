import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:huehome/ui/widgets/list_tiles/grid/event_tile.dart';

class EventsPage extends StatelessWidget {
  final String title;

  EventsPage({this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBar(),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(12),
          child: GridView.extent(
            maxCrossAxisExtent: 150.0,
            children: [
              EventTile(
                title: "Turn the lights on",
                subtitle: "3 rules",
                isActive: true,
              ),
              EventTile(
                title: "Turn the lights off",
                subtitle: "No rules",
                isActive: false,
              ),
              EventTile(
                title: "Dim lights",
                subtitle: "No rules",
                isActive: false,
              ),
              EventTile(
                title: "Brighten lights",
                subtitle: "2 rules",
                isActive: true,
              ),
              EventTile(
                title: "Change scenes",
                subtitle: "2 rules",
                isActive: true,
              ),
              EventTile(
                title: "Blink lights",
                subtitle: "No rules",
                isActive: false,
              ),
            ],
          ),
        ),
        /*
        child: Center(
          child: Text(
            "Events are coming!",
            style: TextStyle(fontSize: 24),
          ),
        ),
         */
      ),
    );
  }

  AppBar _appBar() {
    return AppBar(
      title: Text(
        title,
      ),
      centerTitle: false,
      actions: [],
    );
  }
}
