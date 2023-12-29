import 'dart:convert';
import 'package:flutter_beginner_class/23_12_28/model/time.dart';
import 'package:http/http.dart' as http;

class TimeApi {
  Future<Time> getTime() async {
    final response = await http.get(Uri.parse('https://worldtimeapi.org/api/timezone/Asia/Seoul'));
    return Time.fromJson(jsonDecode(response.body));
  }
}