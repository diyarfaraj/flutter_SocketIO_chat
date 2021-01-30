import 'ChatScreen.dart';
import 'ChatUsersScreen.dart';
import 'LogInScreen.dart';

class Routes {
  static routes() {
    return {
      LoginScreen.ROUTE_ID: (context) => LoginScreen(),
      ChatUsersScreen.ROUTE_ID: (context) => ChatUsersScreen(),
      ChatScreen.ROUTE_ID: (context) => ChatScreen()
    };
  }

  static initScreen() {
    return LoginScreen.ROUTE_ID;
  }
}
