import 'package:get/get.dart';
import 'package:placeholderapi/presentation/models/users_model.dart';
import 'package:placeholderapi/presentation/repository/user_repository.dart';

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
}