import 'package:flutter/material.dart';
import 'package:flutter_websocket/SocketIOChat/ChatUsersScreen.dart';
import 'package:flutter_websocket/SocketIOChat/Global.dart';
import 'package:flutter_websocket/SocketIOChat/User.dart';

class LoginScreen extends StatefulWidget {
  static const String ROUTE_ID = 'login_screen';

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController _usernameController;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _usernameController = TextEditingController();
    G.initDummyUsers();
    ;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Log In Screen")),
      body: Container(
        alignment: Alignment.center,
        padding: EdgeInsets.all(30),
        child: Column(
          children: [
            TextField(
              controller: _usernameController,
              textAlign: TextAlign.center,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(5),
                  ),
                ),
                filled: true,
                fillColor: Colors.white,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            InkWell(
              splashColor: Colors.blue,
              child: OutlineButton.icon(
                onPressed: () {
                  _loginBtnTap();
                },
                icon: Icon(Icons.login_rounded),
                label: Text("Login"),
                splashColor: Colors.blue,
              ),
            )
          ],
        ),
      ),
    );
  }

  _loginBtnTap() {
    if (_usernameController.text.isEmpty) {
      return;
    }

    User me = G.dummyUsers[0];

    if (_usernameController.text != 'a') {
      me = G.dummyUsers[1];
    }
    G.loggedInUser = me;
    _openChatListUsersScreen(context);
  }

  _openChatListUsersScreen(context) async {
    await Navigator.pushReplacementNamed(
      context,
      ChatUsersScreen.ROUTE_ID,
    );
  }
}
