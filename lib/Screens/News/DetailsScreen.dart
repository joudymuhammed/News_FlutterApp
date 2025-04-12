import 'package:flutter/material.dart';

class DetailsScreen extends StatelessWidget {
   DetailsScreen({super.key ,required this.image, required this.description,  required this.title});
  String image;
  String title;
  String description;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.network(image),
            Text(title),
            Text(description)

          ],
        ),
      ),
    );
  }
}
