import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:splash_screen/model/article_model.dart';

class ApiServiceOtimotif {
  final endPointUrl = "newsapi.org";
  final client = http.Client();
  Future<List<Article>> getArticle() async {
    final queryParameters = {
      'q': 'honda indonesia',
      'apiKey': '9581dded76d0438b8d3d6d9bbf0eb5d9'
    };
    final uri = Uri.https(endPointUrl, '/v2/everything', queryParameters);
    final response = await client.get(uri);
    Map<String, dynamic> json = jsonDecode(response.body);
    List<dynamic> body = json['articles'];
    List<Article> articles =
        body.map((dynamic item) => Article.fromJson(item)).toList();
    return articles;
  }
}
