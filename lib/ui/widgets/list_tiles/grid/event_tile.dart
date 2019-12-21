import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class EventTile extends StatelessWidget {
  String title;
  String subtitle;
  bool isActive;

  EventTile({this.title, this.subtitle, this.isActive});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(5.0),
      ),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [_enabledIndicator(), _title(context), _subtitle(context)],
        ),
      ),
    );
  }

  Widget _enabledIndicator() {
    return Container(
      width: 17,
      alignment: Alignment.centerLeft,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(color: Colors.orange, width: 8.0),
        //borderRadius: BorderRadius.circular(10.0),
      ),
    );
  }

  Widget _title(BuildContext context) {
    return Text(title, style: Theme.of(context).textTheme.subhead);
  }

  Widget _subtitle(BuildContext context) {
    return Text(
      subtitle ?? "",
      style: Theme.of(context).textTheme.body1,
    );
  }
}
