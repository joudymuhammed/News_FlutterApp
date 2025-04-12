import 'package:categories/Screens/News/DetailsScreen.dart';
import 'package:flutter/material.dart';

class ItemList extends StatelessWidget {

  ItemList({super.key,required this.image, required this.title, required this.description});
  String image;
  String title;
  String description;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ()
      {
        Navigator.push(context, MaterialPageRoute(builder: (context) => DetailsScreen(title: title ,description:description ,image:image ,)));
      },
      child: Card(
        child: Column(
          children: [
            Image.network(image),
            Text(title)
          ],
        ),
      ),
    );
  }
}
