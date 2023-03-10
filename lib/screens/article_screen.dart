import 'package:flutter/material.dart';
import 'package:news_app/models/article_model.dart';

import '../widgets/custom_tag.dart';
import '../widgets/image_container.dart';

class ArticleScreen extends StatelessWidget {
  const ArticleScreen({super.key});

  static const routeName = '/article';

  @override
  Widget build(BuildContext context) {
    final article = ModalRoute.of(context)!.settings.arguments as Article;
    return ImageContainer(
      width: double.infinity,
      imageUrl: article.imageUrl,
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          iconTheme: const IconThemeData(color: Colors.white),
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        extendBodyBehindAppBar: true,
        body: ListView(
          children: [
            _NewsHeadline(article: article,),
            Container(
              padding: const EdgeInsets.all(20),
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(topLeft: Radius.circular(20),topRight: Radius.circular(20)),
                color: Colors.white,
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      CustomTag(
                        backgroundColor: Colors.black54.withAlpha(150),
                        children: [
                          CircleAvatar(radius: 10,backgroundImage: NetworkImage(article.authorImageUrl),),
                          const SizedBox(width: 10,),
                          Text(
                            article.author,
                            style: Theme.of(context)
                                .textTheme
                                .bodyMedium!
                                .copyWith(color: Colors.white),
                          ),
                        ],
                      ),
                      const SizedBox(width: 10,),
                      CustomTag(
                        backgroundColor: Colors.grey.shade200.withAlpha(150),
                        children: [
                          Icon(Icons.timer,color: Colors.grey,),
                          const SizedBox(width: 10,),
                          Text(
                              '${DateTime.now().difference(article.createdAt).inHours} hours ago',
                               style: Theme.of(context)
                                .textTheme
                                .bodyMedium!
                          ),
                        ],
                      ),
                      const SizedBox(width: 10,),
                      CustomTag(
                        backgroundColor: Colors.grey.shade200.withAlpha(150),
                        children: [
                          Icon(Icons.remove_red_eye,color: Colors.grey,),
                          const SizedBox(width: 10,),
                          Text(
                              '${article.views}',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyMedium
                          ),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(height: 20,),
                  Text(
                    article.title,
                    style: Theme.of(context).textTheme.headlineSmall!.copyWith(fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 20,),
                  Text(
                    article.body,
                    style: Theme.of(context).textTheme.bodyMedium!.copyWith(height: 1.5),
                  ),

                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class _NewsHeadline extends StatelessWidget {
  const _NewsHeadline({
    super.key,
    required this.article,
  });

  final Article article;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: MediaQuery.of(context).size.height * 0.15,),
          CustomTag(
            backgroundColor: Colors.grey.withAlpha(150),
            children: [
              Text(
                article.category,
                style: Theme.of(context)
                    .textTheme
                    .bodyMedium!
                    .copyWith(color: Colors.white),
              ),
            ],
          ),
          const SizedBox(height: 10,),
          Text(article.title,
              style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  height: 1.25)),
          const SizedBox(height: 10,),
          Text(article.subtitle,
              style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  height: 1.25)),
        ],
      ),
    );
  }
}
