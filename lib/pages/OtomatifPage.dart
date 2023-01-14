import 'package:flutter/material.dart';
import 'package:splash_screen/components/customeliststyle.dart';
import 'package:splash_screen/model/article_model.dart';
import 'package:splash_screen/Service_Api/Service_Api_Sport.dart';
import 'package:splash_screen/Service_Api/Service_Api_Otomotif.dart';

class OtomotifPage extends StatefulWidget {
  @override
  _OtomotifPage createState() => _OtomotifPage();
}

class _OtomotifPage extends State<OtomotifPage> {
  ApiServiceOtimotif client = ApiServiceOtimotif();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Berita Hangat", style: TextStyle(color: Colors.black)),
        backgroundColor: Color.fromARGB(255, 69, 241, 218),
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
