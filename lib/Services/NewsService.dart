import 'package:dio/dio.dart';

import '../Models/NewsModel.dart';
class NewsService
{
  static Dio dio = Dio();
  static Future<NewsModel>GetData(String category) async
  {
    try {
      Response response = await dio.get(
          'https://newsapi.org/v2/top-headlines?country=us&category=$category&apiKey=84384f38d5e24f87b6e9959fadfdc7f2');
      if (response.statusCode == 200) {
        print(response.statusCode);
        return NewsModel.fromJson(response.data);
      }
      else {
        throw Exception("null data ${response.statusCode}");
      }
    }catch(e)
    {
      throw Exception("error fetching data: $e");
    }
  }
}