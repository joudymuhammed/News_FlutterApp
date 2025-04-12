import 'package:categories/Widgets/ItemList.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../Providers/NewsProvider.dart';

class NewsScreen extends StatelessWidget {
   NewsScreen({super.key, required this.category});
  String category;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Consumer<NewsProvider>(builder: (context, value, child) {
        var list = value.newsModel?.Data;
        if(list == null)
          {
            value.FetchData(category);
            return Center(child: CircularProgressIndicator());
          }
        else
          {
            value.newsModel?.Data = null;
            return Column(
              children: [
                Expanded(
                  child: ListView.builder(
                    itemCount: list.length,
                    itemBuilder: (context, index) {
                    return ItemList(image: list[index]["urlToImage"]?? '', title: list[index]["title"]?? '', description: list[index]["description"]?? '',);
                  
                  },),
                )
              ],
            );}
          }

      )

      );

  }
}
