import 'package:aplicacion_numero_uno/models/news_model.dart';
import 'package:aplicacion_numero_uno/utils/asset_image_app.dart';
import 'package:flutter/material.dart';


class DetailScreen extends StatelessWidget {

  static const path = '/news-detail-screen';
  static const name = 'news-detail-screen';
  

  final Article article;
  
  const DetailScreen({super.key, required this.article});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: size.height * 0.27,
            flexibleSpace: FlexibleSpaceBar(
              centerTitle: false,
              background: FadeInImage(
                placeholder: AssetImage(AssetImageApp.getLoader),
                image: NetworkImage(article.urlToImage ?? 'https://t4.ftcdn.net/jpg/04/73/25/49/360_F_473254957_bxG9yf4ly7OBO5I0O5KABlN930GwaMQz.jpg',),
                fit: BoxFit.cover,
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildListDelegate(
             [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  children: [
                    Text(article.title, style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 17),),
                    SizedBox(height: size.height * 0.01,),
                    Row(
                      children: [
                        Text(article.publishedAt, style: const TextStyle(fontSize: 15),),
                        const Spacer(),
                        Text(article.source.name, style: const TextStyle(fontSize: 15),)
                      ],
                    ),
                    SizedBox(height: size.height * 0.02,),
                    Text(article.description ?? '', style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w300),),
                    SizedBox(height: size.height * 0.02,),
                    Text(article.content ?? '', style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w300),),
                    SizedBox(height: size.height * 0.02,),
                    Text(article.content ?? '', style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w300),),
                    SizedBox(height: size.height * 0.02,),
                    Text(article.content ?? '', style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w300),),
                    SizedBox(height: size.height * 0.02,),
                    Text(article.content ?? '', style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w300),),
                    SizedBox(height: size.height * 0.02,),
                    Text(article.content ?? '', style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w300),),
                  ],
                ),
              )
             ]
            )
          ),
           
        ],
      )
    );
  }
}