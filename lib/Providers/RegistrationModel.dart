import 'package:categories/Models/RegistrationModel.dart';
import 'package:categories/Services/RegistrationService.dart';
import 'package:flutter/material.dart';

class RegistrationProvider extends ChangeNotifier
{
  RegistrationModel? regModel;
  Future<bool>PostSignIn (String Email, String Password) async
  {
    try{
      regModel =await RegistrationService.SignIn(Email: Email, Password: Password);

      if(regModel?.status == true)
      {
        notifyListeners();
        print("login successfullllllllllllll");
        return true;
      }
      else
      {
        print("erroooooooooooooooooorrrrrr");
        return false;
      }
    }
    catch(e)
    {
      throw Exception(e);
    }



  }
}