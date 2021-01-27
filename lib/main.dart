import 'package:flutter/material.dart';
import 'package:flutter_websocket/SocketIOChat/LogInScreen.dart';
import 'package:flutter_websocket/SocketIOChat/Routes.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Socket Chat',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      routes: Routes.routes(),
      initialRoute: Routes.initScreen(),
    );
  }
}
