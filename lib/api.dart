import 'dart:convert';

import 'package:b_api/number_fact_resp/number_fact_resp.dart';
import 'package:http/http.dart' as http;

Future<NumberFactResp> getData(String number) async {
  final response =
      await http.get(Uri.parse('http://numbersapi.com/$number?json'));
  var data = response.body;
  //print(data);
  final _bodyAsJson = jsonDecode(data) as Map<String, dynamic>;
  // print(_bodyAsJson);
  final _data = NumberFactResp.fromJson(_bodyAsJson);
  return _data;
}
