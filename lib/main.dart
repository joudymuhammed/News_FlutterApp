import 'package:categories/Providers/NewsProvider.dart';
import 'package:categories/Providers/RegistrationModel.dart';
import 'package:categories/Screens/News/HomeScreen.dart';
import 'package:categories/Screens/Registration/LoginScreen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
        providers: [
         ChangeNotifierProvider(create: (context) => NewsProvider(),),
          ChangeNotifierProvider(create: (context) => RegistrationProvider(),)
        ],
      child: MaterialApp(
          home: LoginScreen()
      ) ,
    );
      

  }
}

