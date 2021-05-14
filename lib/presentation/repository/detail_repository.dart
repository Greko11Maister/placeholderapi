
import 'package:placeholderapi/presentation/core/api_provider.dart';
import 'dart:developer';

import 'package:placeholderapi/presentation/models/post_model.dart';
import '../core/api_provider.dart';

class DetailPostsRepository extends ApiProvider {
  Future <List<PostsModel>> getDetail() async{
    try{
      final res = await dio.get("/posts?userId=1");
      log("$res", name: "El resultado de la consulta");
      return (res.data as List).map((json) => PostsModel.fromJson(json)).toList();
    }
    catch(err){
      log("${err}", name: "Error- posts");
      throw err;
    }
}
}




