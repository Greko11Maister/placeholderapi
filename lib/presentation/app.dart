import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:placeholderapi/presentation/pages/posts/posts_page.dart';
import 'package:placeholderapi/presentation/pages/users/users_page.dart';
class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: UsersPage.routeName,
      routes: {
        UsersPage.routeName: (ctx) => UsersPage(),
        PostsPage.routeName: (ctx)=> PostsPage()
      },
    );
  }
}