import 'package:dio/dio.dart';

class ApiProvider {
  final String _baseApiURL = "https://jsonplaceholder.typicode.com";

  String get urlApi => _baseApiURL;
  Dio dio;

  ApiProvider() {
    dio = Dio(BaseOptions(baseUrl: _baseApiURL));
    // dio.interceptors.add(AppInterceptors());
  }
}
