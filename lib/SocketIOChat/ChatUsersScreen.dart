import 'package:flutter/material.dart';
import 'package:flutter_websocket/SocketIOChat/Global.dart';
import 'package:flutter_websocket/SocketIOChat/User.dart';

class ChatUsersScreen extends StatefulWidget {
  static const String ROUTE_ID = 'chat_users_screen';

  @override
  _ChatUsersScreenState createState() => _ChatUsersScreenState();
}

class _ChatUsersScreenState extends State<ChatUsersScreen> {
  List<User> _chatUsers = List<User>();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    _chatUsers = G.getUsersFor(user)
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Chat usrs screen")),
      body: Text("chatting here"),
    );
  }
}
