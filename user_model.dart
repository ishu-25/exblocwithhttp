import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:exbloc/blocs/detail_screen.dart';

class UserModel{
  final int id;
  final String email;
  final String firstname;
  final String lastname;
  final String avatar;

  UserModel(
      {required this.id,
        required this.email,
        required this.firstname,
        required this.lastname,
        required this.avatar});

  factory UserModel.fromJson(Map<String, dynamic> json){
    return UserModel(
        id: json['id'],
        email: json['email'],
        firstname: json['firstname'] ?? 'First Name',
        lastname: json['lastname']?? 'Last Name',
        avatar: json['avatar'] ?? 'https://media.licdn.com/dms/image/C5603AQEFmO6W7liK1w/profile-displayphoto-shrink_800_800/0/1663511392971?e=1689206400&v=beta&t=KWh4kgmcahDxFSyvZ8ERc8lQL2iv3YDJmhmrDaclYuY');
  }

}