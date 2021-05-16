import 'dart:developer';

import 'package:placeholderapi/presentation/models/post_model.dart';
import '../core/api_provider.dart';

class PostsRepository extends ApiProvider {
  Future<List<PostsModel>> getPosts({int userId}) async {
    try {
      final res = await dio.get("/posts", queryParameters: userId != null ? {"userId": userId} : null);
      return (res.data as List).map((json) => PostsModel.fromJson(json)).toList();
    } catch (err) {
      log("${err}", name: "Error- posts");
      throw err;
    }
  }
  // metodo para consultar l post por id
  
 Future<PostsModel> getPostForId(int id) async {
    try{
      final res =  await dio.get("/posts/$id");
      log("$res", name: "RESULTADO DE LA CONSULTA");
      return PostsModel.fromJson(res.data);
    }catch(err){
      log("${err}", name: "Error- posts ID");
      throw err;
    }
}
}
