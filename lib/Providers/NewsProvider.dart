import 'package:flutter/material.dart';

import '../Models/NewsModel.dart';
import '../Services/NewsService.dart';


class NewsProvider extends ChangeNotifier
{
  NewsModel ?newsModel;
  Future <void> FetchData (String category) async
  {
    newsModel = await NewsService.GetData(category);
    notifyListeners();

  }
}