

import 'package:get/get.dart';
import 'package:placeholderapi/presentation/models/post_model.dart';
import 'package:placeholderapi/presentation/models/users_model.dart';
import 'package:placeholderapi/presentation/pages/users/profile_user_page.dart';
import 'package:placeholderapi/presentation/repository/detail_repository.dart';

class ProfileController extends GetxController {

  List<PostsModel> dPosts = <PostsModel>[];
  DetailPostsRepository detailPostsRepository = DetailPostsRepository();

  @override
  void onReady() {
    loadData();
    super.onReady();
  }


  Future<void> loadData() async {
    final res = await detailPostsRepository.getDetail();
    this.dPosts.addAll(res);
    update();

  }


}