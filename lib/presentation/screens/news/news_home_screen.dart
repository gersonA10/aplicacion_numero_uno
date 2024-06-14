import 'package:aplicacion_numero_uno/presentation/providers/news_provider.dart';
import 'package:aplicacion_numero_uno/utils/asset_image_app.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';


class NewsHomeScreen extends StatelessWidget {

  static const path = '/news-home-screen';
  static const name = 'news-home-screen';

  const NewsHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final newsProvider = Provider.of<NewsProvider>(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text("News App"),
      ),
      body: newsProvider.listNews.isEmpty 
      ? const Center(child: CircularProgressIndicator()) 
      : ListView.separated(
        separatorBuilder: (context, index) {
            return const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Divider(),
            );
        },
        itemCount: newsProvider.listNews.length,
        itemBuilder: (context, index) {
          final news = newsProvider.listNews[index];
          return  Container(
            padding: const EdgeInsets.all(20),
            height: 170,
            width: double.infinity,
            child: Row(
              children: [
                SizedBox(
                  width: 110,
                  height: 110,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: FadeInImage(
                      placeholder: AssetImage(AssetImageApp.getLoader), 
                      image: NetworkImage(news.urlToImage ?? 'https://t4.ftcdn.net/jpg/04/73/25/49/360_F_473254957_bxG9yf4ly7OBO5I0O5KABlN930GwaMQz.jpg',),
                      fit: BoxFit.cover,
                      ),
                  )
                ),
                const SizedBox(width: 20,),
                 Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Autor: ${news.author ?? 'Autor no disponible'}"),

                    SizedBox(
                      width: 180,
                      child: Text(news.title, maxLines: 2, style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 17),),
                    ),
                    SizedBox(
                      width: 180,
                      child: Text(news.content ?? "Contenido no disponible", maxLines: 2, style: const TextStyle(fontSize: 15, overflow: TextOverflow.ellipsis),),
                    ),
                  ],
                )
              ],
            ),
          );
        }
      )
    );
  }
}