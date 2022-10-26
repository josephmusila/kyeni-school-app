import 'dart:convert';


import 'package:http/http.dart' as http;

import '../models/student.dart';

class HttpService {
  static const baseUrl = "http://127.0.0.1:8000/api/students/login/";
  var token = "";

  Future<dynamic> studentData(String regNumber) async {
    var response = await http.get(Uri.parse(baseUrl + regNumber));
    var data = StudentModel.fromJson(json.decode(response.body));

    print(response);

    return data;
  }
}

