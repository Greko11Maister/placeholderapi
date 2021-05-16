import 'dart:developer';

import 'package:get/get.dart';
import 'package:placeholderapi/presentation/models/post_model.dart';
import 'package:placeholderapi/presentation/repository/posts_repository.dart';

class PostDetailController extends GetxController {
  PostsRepository _postsRepository =  PostsRepository();
  PostsModel post;

  Future<void> loadPostId(int id)  async {
    final res =  await  _postsRepository.getPostForId(id);
    this.post =  res;
    log("${this.post.id} , ${this.post.title}", name: "Resultado en el controlador");
    update();
  }
}