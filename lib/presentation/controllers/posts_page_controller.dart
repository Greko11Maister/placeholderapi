

import 'package:get/get.dart';
import 'package:placeholderapi/presentation/models/post_model.dart';
import 'package:placeholderapi/presentation/pages/users/profile_user_page.dart';
import 'package:placeholderapi/presentation/repository/detail_repository.dart';
import 'package:placeholderapi/presentation/repository/posts_repository.dart';

class PostsController extends  GetxController{
  String titlePage = " Posts ";
  List<PostsModel> posts = <PostsModel>[];
  PostsRepository  postsRepository = PostsRepository();



  @override
  void onReady() {
    //loadData();
    super.onReady();
  }


 Future<void> loadData({int userId}) async{
   final res =  await postsRepository.getPosts(userId: userId);
   this.posts.addAll(res);
    update();
  }



}