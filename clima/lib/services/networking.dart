import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:flutter_dotenv/flutter_dotenv.dart';

String? apiKey = dotenv.env['CLIMA_API_KEY'];

class NetworkHelper{
  final String url;

  NetworkHelper(this.url);

  Future getData() async{
    http.Response response = await http.get(Uri.parse(url));
    if(response.statusCode == 200){
      String data = response.body;
      var json = jsonDecode(data);
      return json;
    }else{
      print(response.statusCode);
      print(response.body);
    }

  }
}