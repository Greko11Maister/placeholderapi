

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:placeholderapi/presentation/controllers/profile_controller.dart';

class ProfileUserPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<ProfileController>(
      init: ProfileController(),
        builder: (_)=>Scaffold(
          appBar: AppBar(
            title: Text('Detralle de Usuario'),
          ),
              body: Center(
            child: Column(
              children: [
                Text(""),


              ],
            ),
        ),
        ),
    );
  }
}
