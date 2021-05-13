import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:placeholderapi/presentation/controllers/users_page_controller.dart';

class UsersPage extends StatelessWidget {
  static const routeName = "/users/page";

  UsersPage({Key key}) : super(key: key);

  UsersController _controller;

  @override
  Widget build(BuildContext context) {
    _controller = UsersController();
    return Scaffold(
      appBar: AppBar(
        title: GetBuilder<UsersController>(
          init: _controller,
          builder: (_){
            return Text(_.titlePage);
          },
        ),
      ),
      body: RefreshIndicator(
        child: GetBuilder<UsersController>(
          init: _controller,
          builder: (_){
            return ListView.builder(
              itemCount: _.users.length,
              itemBuilder: (context, i){
                return ListTile(
                  title: Text(_.users[i].name),
                );
              },
            );
          },
        ),
        onRefresh: _controller.loadData,
      ),
    );
  }
}
