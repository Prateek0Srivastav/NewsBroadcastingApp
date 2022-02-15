import 'package:demo_project/models/news_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'news_detail.dart';

class NewsCard extends StatelessWidget {
  final NewsModel newsModel;

  // ignore: use_key_in_widget_constructors
  const NewsCard({required this.newsModel});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: () => Get.to(NewsDetail(
            newsModel: newsModel,
          )),
          child: Card(
            clipBehavior: Clip.antiAliasWithSaveLayer,
            elevation: 10,
            child: Column(
              children: [
                Hero(
                  tag: newsModel.img.toString(),
                  child: SizedBox(
                    height: 210,
                    child: Image.network(
                      newsModel.img,
                      fit: BoxFit.cover,
                      height: 200,
                      loadingBuilder: (BuildContext context, Widget child,
                          ImageChunkEvent? loadingProgress) {
                        if (loadingProgress == null) return child;
                        return Center(
                          child: CircularProgressIndicator(
                            value: loadingProgress.expectedTotalBytes != null
                                ? loadingProgress.cumulativeBytesLoaded /
                                    loadingProgress.expectedTotalBytes!
                                : null,
                          ),
                        );
                      },
                    ),
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                Text(
                  newsModel.title,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                      fontWeight: FontWeight.bold, fontSize: 15),
                ),
                const SizedBox(
                  height: 5,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
