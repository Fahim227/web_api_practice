
import 'dart:convert';

import 'package:web_api_practice/Models/contact.dart';
import 'package:http/http.dart' as http;
class PeopleAPI{

  final String _BASE_URL = 'https://reqres.in/api/';
// Future<List<People>>


  Future<List<People>> getAllUsers(int page_number) async{
    String endPoint = 'users?page=$page_number';
    http.Response response = await http.get(Uri.parse(_BASE_URL+endPoint));
    if (response.statusCode == 200){
      List<dynamic> datas = jsonDecode(response.body)['data'];
      // print(datas);
      List<People> peoples = [];
      for (Map<String , dynamic> data in datas){
        peoples.add(People.fromJson(data));
      }
      return peoples;
      // return datas.map((people) => People.fromJson(people));
    }
    throw Exception('Failed to get the data');
    
  }


}