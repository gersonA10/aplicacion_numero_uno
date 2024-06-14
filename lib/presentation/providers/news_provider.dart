import 'package:aplicacion_numero_uno/models/news_model.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

// https://newsapi.org/v2/top-headlines?country=us&category=business&apiKey=a84e32b02d554468bea9b06108775a0b#
String _apiKey = 'a84e32b02d554468bea9b06108775a0b';
String _country = 'us';
String _url = 'https://newsapi.org/v2/top-headlines?country=$_country&category=business&apiKey=$_apiKey';

class NewsProvider extends ChangeNotifier {

  List<Article> listNews = [];

  NewsProvider(){
    getArticles();
  }


getArticles() async {
  final response = await http.get(Uri.parse(_url));

  final res = newsModelFromJson(response.body);

  listNews.addAll(res.articles);
  notifyListeners();

}

}