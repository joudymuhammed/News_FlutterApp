import 'package:categories/Models/RegistrationModel.dart';
import 'package:dio/dio.dart';
class RegistrationService
{
 static Dio dio = Dio();
 static Future <RegistrationModel>SignIn({required String Email,  required String Password})async
 {
   try{
     Response response = await dio.post('https://student.valuxapps.com/api/login',
         data:{
           "email":Email,
           "password":Password
         });
     if(response.statusCode==200)
       {
         return RegistrationModel.fromJson(response.data);
       }
     else
       {
         throw Exception("Cant login");
       }
   }
   catch(e)
   {
     throw Exception(e);
   }
 }
}