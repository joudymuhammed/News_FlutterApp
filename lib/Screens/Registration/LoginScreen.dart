import 'dart:ffi';

import 'package:categories/Providers/RegistrationModel.dart';
import 'package:categories/Screens/News/HomeScreen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class LoginScreen extends StatelessWidget {
   LoginScreen({super.key});
  TextEditingController EmailController = TextEditingController();
  TextEditingController PasswordController = TextEditingController();
  final _key = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Consumer<RegistrationProvider>(builder: (context, value, child) {
        return  Padding(
          padding: const EdgeInsets.all(30  ),
          child: Form(
            key: _key,
            child: Column(
              children: [
                TextFormField(
                  validator: (value) {
                    if(value==null || value.isEmpty)
                    {
                      return "required";
                    }
                    else
                    {
                      return null;
                    }
                  },
                  controller: EmailController,
                  decoration: InputDecoration(labelText: "Email"),
                ),
                TextFormField(
                  controller: PasswordController,
                  validator: (value) {
                    if(value == null || value.isEmpty )
                    {
                      return "required";
                    }
                    else
                    {
                      return null;
                    }
                  },
                ),
                ElevatedButton(onPressed: () async {
                  if(_key.currentState!.validate())
                  {
                    bool login = await value.PostSignIn(EmailController.text, PasswordController.text);
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar
                      (content: Text(value.regModel!.message)));
                    if(login)
                      {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => HomeScreen(),));

                      }
                  }
                },
                    child: Text("Login"))
              ],
            ),
          ),
        );
      },)
    );
  }
}
