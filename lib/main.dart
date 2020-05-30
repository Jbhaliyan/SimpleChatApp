import 'package:flutter/material.dart';
import 'package:simplechatapp/theme/theme.dart';
import 'chatScreen/chatScreen.dart';

void main() {
  runApp(FriendlyChatApp());
}

class FriendlyChatApp extends StatelessWidget {
  const FriendlyChatApp({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: kAndroidTheme,
      home: ChatScreen(title: 'Friendly Chat'),
    );
  }
}

