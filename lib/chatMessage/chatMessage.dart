//this class contains the decoration of how message will be shown on screen.

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

String _name = 'Unknown';
DateTime _now = new DateTime.now();
dynamic time = DateFormat.jm().format(_now);
String date = DateFormat("dd/mm/yyy").format(_now);

class ChatMessage extends StatelessWidget {
  ChatMessage({this.text, this.animationController});
  final String text;
  final AnimationController animationController;

  @override
  Widget build(BuildContext context) {
    return SizeTransition(
      sizeFactor: CurvedAnimation(
        curve: Curves.easeIn,
        parent: animationController,
      ),
      axisAlignment: 0.0,
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 10.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: const EdgeInsets.only(right: 16.0),
              child: CircleAvatar(
                child: Text(_name[0]),
              ),
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(_name, style: Theme.of(context).textTheme.headline4),
                  Container(
                    margin: EdgeInsets.only(top: 5.0),
                    child: Text(text),
                  )
                ],
              ),
            ),
            // print(now.toString());
            Expanded(
              child: Column(
                children: <Widget>[
                  Text('$date',
                  ),
                  Text(
                    '$time',
                    textAlign: TextAlign.end,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
