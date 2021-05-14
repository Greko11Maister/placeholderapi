

import 'dart:developer';

import 'package:placeholderapi/presentation/models/post_model.dart';
import '../core/api_provider.dart';

class PostsRepository extends ApiProvider{
 Future <List<PostsModel>> getPosts() async{
   try{
     final res = await dio.get("/posts");
     log("$res", name: "El resltado de la consulta");
     return (res.data as List).map((json) => PostsModel.fromJson(json)).toList();
   }
   catch(err){
     log("${err}", name: "Error- posts");
     throw err;
   }
 }
  
  
}