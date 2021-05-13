import 'package:flutter/material.dart';
import 'package:placeholderapi/presentation/pages/users/users_page.dart';
class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: UsersPage.routeName,
      routes: {
        UsersPage.routeName: (ctx) => UsersPage()
      },
    );
  }
}