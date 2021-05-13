import 'dart:developer';

import 'package:placeholderapi/presentation/core/api_provider.dart';
import 'package:placeholderapi/presentation/models/users_model.dart';

class UserRepository extends ApiProvider {

 Future<List<UsersModel>> getUsers() async {
   try{
     final res =  await dio.get("/users");
     log("$res", name: "El resltado de la consulta");
     return (res.data as List).map((json) => UsersModel.fromJson(json)).toList();
   }catch(err){
     log("${err}", name: "Error- users");
     throw err;
   }
  }
}