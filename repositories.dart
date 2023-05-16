import 'dart:convert';
import 'package:http/http.dart' as http;
import '../models/user_model.dart';


class UserRepository{
  Future<List<UserModel>> getUsers() async{
    String endpoint='https://reqres.in/api/users?page=2';


    try {
      var response = await http.get(Uri.parse(endpoint));
      if (response.statusCode == 200) {
        final List result = jsonDecode(response.body)['data'];
        return result.map(((e) => UserModel.fromJson(e))).toList();
      }
      else {
        print(response.statusCode);
        List<UserModel> dummy = [];
        return dummy;
      }
    }
    catch(error){
      print(error.runtimeType);
      throw Exception();
    }
  }
}