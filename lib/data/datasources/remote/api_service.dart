import 'package:dio/dio.dart';

class ApiService {
  final Dio dio = Dio();
  Future<void> sendTask(String title) async{
    await dio.post(
       'https://jsonplaceholder.typicode.com/posts',
       data: {'title' : title},
    );
  }
}