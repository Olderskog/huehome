import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ActivityPage extends StatelessWidget {
  final String title;

  ActivityPage({this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBar(),
      body: SafeArea(
        child: Center(
          child: Text(
            "History will arrive soon!",
            style: TextStyle(fontSize: 24),
          ),
        ),
      ),
    );
  }

  AppBar _appBar() {
    return AppBar(
      title: Text(
        title,
      ),
      actions: [],
      centerTitle: false,
    );
  }
}
