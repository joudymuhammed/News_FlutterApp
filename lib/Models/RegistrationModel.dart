
class RegistrationModel
{
  bool status;
  String message;
  RegistrationModel({required this.status, required this.message});
  factory RegistrationModel.fromJson(Map<String,dynamic>json)
  {
    return RegistrationModel(status: json['status'], message: json["message"]);
  }
}