import 'package:get/get.dart';
import 'package:get/route_manager.dart';
import 'package:placeholderapi/presentation/models/post_model.dart';
import 'package:placeholderapi/presentation/models/users_model.dart';
import 'package:placeholderapi/presentation/pages/users/profile_user_page.dart';
import 'package:placeholderapi/presentation/repository/user_repository.dart';

import '../models/users_model.dart';

class UsersController extends GetxController {
  String titlePage = "Usuarios";
  List<UsersModel> users = <UsersModel>[];
  UserRepository userRepository = UserRepository();



  @override
  void onReady() {
    loadData();
    super.onReady();
  }

  Future<void> loadData() async {
    this.users.clear();
    final res =  await userRepository.getUsers();
    this.users.addAll(res);
    update();
  }

  showProfileUser(UsersModel user ){
    Get.to(ProfileUserPage(), arguments: user, );

  }
  showPostsofUser(UsersModel user) {
    Get.to(ProfileUserPage(), arguments: user);
  }

}