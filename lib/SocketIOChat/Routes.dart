import 'ChatScreen.dart';
import 'ChatUsersScreen.dart';
import 'LogInScreen.dart';

class Routes {
  static routes() {
    return {
      LoginScreen.ROUTE_ID: (context) => LoginScreen(),
      ChatUsersScreen.ROUTE_ID: (context) => ChatUsersScreen()
    };
  }

  static initScreen() {
    return LoginScreen.ROUTE_ID;
  }
}
