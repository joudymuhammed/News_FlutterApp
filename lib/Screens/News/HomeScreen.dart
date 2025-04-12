import 'package:categories/Screens/News/NewsScreen.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
   HomeScreen({super.key});
  TextEditingController CategoryController = TextEditingController();
  var _key = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Search"),),
      body: Column(
        children: [
          Form(
            key: _key,
            child: TextFormField(
              validator: (value) {
                if(value == null || value.isEmpty)
                  {
                    return "Field Required";
                  }
                else
                  {
                    return null;
                  }
              },
              controller:CategoryController,
              decoration: InputDecoration(labelText: "enter category name"),
            ),
          ),
          ElevatedButton(onPressed: (){

            if(_key.currentState!.validate())
            {
                Navigator.push(context, MaterialPageRoute(builder: (context) => NewsScreen(category: CategoryController.text,),));

            }

          }, child: Text("Search"))
        ],
      ),
    );
  }
}
