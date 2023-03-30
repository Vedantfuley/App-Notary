import 'dart:convert';

import 'package:appnotary/get_data_model.dart';
import 'package:http/http.dart' as http;

class Fetchuser{

  var data = [];
  List<GetDataModel> results = [];
  String fetchurl = "https://notaryapp-staging.herokuapp.com/customer/login";
  Future<List<GetDataModel>> getUserList() async{
    var url = Uri.parse(fetchurl);
    var response = await http.get(url);
    try {
      if (response.statusCode == 200) {
        data = json.decode(response.body);
        results = data.map((e) => GetDataModel.fromJson(e)).toList();
      } else {
        print('api error');
      }
    }on Exception catch (e) {
      print('error: $e');
    }
    return results;
  }
}