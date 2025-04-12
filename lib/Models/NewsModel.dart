class NewsModel
{
  List<dynamic>?Data;

  NewsModel({required this.Data});

  factory NewsModel.fromJson(Map<String,dynamic>json)
  {
    return NewsModel(Data: json["articles"]);
  }

}