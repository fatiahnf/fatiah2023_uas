import 'package:flutter/material.dart';
import 'package:splash_screen/components/customeliststyle.dart';
import 'package:splash_screen/model/article_model.dart';
import 'package:splash_screen/Service_Api/Service_Api_Sport.dart';

class SportPages extends StatefulWidget {
  @override
  _SportPages createState() => _SportPages();
}

class _SportPages extends State<SportPages> {
  ApiService client = ApiService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Berita Hangat", style: TextStyle(color: Colors.black)),
        backgroundColor: Color.fromARGB(255, 101, 41, 136),
      ),
      body: FutureBuilder(
        future: client.getArticle(),
        builder: (BuildContext context, AsyncSnapshot<List<Article>> snapshot) {
          if (snapshot.hasData) {
            List<Article> articles = snapshot.data;
            return ListView.builder(
                itemCount: articles.length,
                itemBuilder: (context, index) =>
                    customListTile(articles[index], context));
          }
          return Center(
            child: CircularProgressIndicator(),
          );
        },
      ),
    );
  }
}
