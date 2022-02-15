import 'package:demo_project/models/news_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NewsDetail extends StatelessWidget {
  final NewsModel newsModel;

  const NewsDetail({Key? key, required this.newsModel}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Center(
            child: Text(
              'Author Name - ' + newsModel.author,
              style: const TextStyle(fontWeight: FontWeight.normal),
            ),
          ),
          leading: IconButton(
            icon: const Icon(Icons.arrow_back, color: Colors.white),
            onPressed: () => Get.back(),
          ),
        ),
        body: Column(
          children: [
            Hero(
              tag: newsModel.img.toString(),
              child: Card(
                elevation: 10,
                clipBehavior: Clip.antiAlias,
                child: SizedBox(
                  height: 300,
                  child: Image.network(
                    newsModel.img,
                    fit: BoxFit.cover,
                    height: 300,
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
            ),
            const SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                newsModel.desc,
                textAlign: TextAlign.justify,
                style:
                    const TextStyle(fontWeight: FontWeight.w700, fontSize: 17),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
