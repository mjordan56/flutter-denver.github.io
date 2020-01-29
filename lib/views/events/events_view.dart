import 'package:flutter/material.dart';

class EventsView extends StatelessWidget {
  const EventsView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blueGrey[400],
      child: Center(
        child: Text('Events View'),
      ),
    );
  }
}