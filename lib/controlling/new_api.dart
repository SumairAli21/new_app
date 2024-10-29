import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:newsapp/models/news_model.dart';

class Newsapi {
  List<Newsmodel> trendingnews = [];

  Future<List<Newsmodel>> getapinews() async {
    var baseurl = Uri.parse(
        'https://newsapi.org/v2/top-headlines?sources=techcrunch&apiKey=f190ac3afd93485b9bdb4087ad2c3778');

    var response = await http.get(baseurl);
    if (response.statusCode == 200) {
      var responsebody = jsonDecode(response.body);
      var articles = responsebody['articles'];

      // Clear the previous data
      trendingnews.clear();

      if (articles != null) {
        for (var eachNew in articles) {
          trendingnews.add(Newsmodel.fromJson(eachNew));
        }
      }
    } else {
      // If the response is not successful, throw an exception
      throw Exception('Failed to load news: ${response.reasonPhrase}');
    }

    print("trending");
    // Always return the trending news list
    return trendingnews;
  }
}
