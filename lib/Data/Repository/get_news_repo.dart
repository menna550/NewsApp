import 'dart:convert';

import 'package:figma/Data/Model/get_news_model.dart';
import 'package:http/http.dart' as http;

class GetNewsRepo {
  Future<GetNewsModel?> getNews() async {
    try {
      var response = await http.get(Uri.parse(
          "https://newsapi.org/v2/everything?q=tesla&from=2023-07-24&sortBy=publishedAt&apiKey=47bf2545cf804d33a01575b06256a43e"));

      var decodedResponse = jsonDecode(response.body);

      if (response.statusCode == 200) {
        GetNewsModel myResponse = GetNewsModel.fromJson(decodedResponse);
        return myResponse;
      } else {
        return null;
      }
    } catch (error) {
      return null;
    }
  }
}
