import 'package:flutter/material.dart';
import 'package:news_app/screens/article_screen.dart';
import 'package:news_app/widgets/image_container.dart';

import '../models/article_model.dart';
import '../widgets/bottom_nav_bar.dart';

class DiscoverScreen extends StatelessWidget {
  const DiscoverScreen({super.key});

  static const routeName = '/discover';

  @override
  Widget build(BuildContext context) {
    List<String> tabs = [
      'Health',
      'Politics',
      'Technology',
      'Geo Politics',
      'Science'
    ];
    return DefaultTabController(
      initialIndex: 0,
      length: tabs.length,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: IconButton(
            onPressed: () {},
            icon: const Icon(Icons.menu),
            color: Colors.black,
          ),
        ),
        bottomNavigationBar: const BottomNavBar(index: 1),
        body: ListView(
          padding: const EdgeInsets.all(20),
          children: [
            const _DiscoverNews(),
            _CategoryNews(tabs: tabs),
          ],
        ),
      ),
    );
  }
}

class _CategoryNews extends StatelessWidget {
  _CategoryNews({
    super.key,
    required this.tabs,
  });
  final articles =Article.articles;
  final List<String> tabs;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TabBar(
          isScrollable: true,
          indicatorColor: Colors.black,
          tabs: tabs.map((tab) => Tab(icon: Text(tab,style: Theme.of(context).textTheme.headlineSmall!.copyWith(fontWeight: FontWeight.bold),),)).toList(),
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height,
          child: TabBarView(children: tabs.map((tab) => ListView.builder(
            itemCount: articles.length,
            shrinkWrap: true,
            itemBuilder: ((context, index) {
              return InkWell(
                onTap: () {
                  Navigator.pushNamed(context, ArticleScreen.routeName,arguments: articles[index]);
                },
                child: Row(
                  children: [
                    ImageContainer(
                        width: 80,
                        height: 80,
                        imageUrl: articles[index].imageUrl,
                        borderRadius: 5,
                        margin: const EdgeInsets.all(10),
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(articles[index].title,style: Theme.of(context).textTheme.bodyLarge!.copyWith(fontWeight: FontWeight.bold),),
                          const SizedBox(height: 10,),
                          Row(children: [
                            const Icon(Icons.schedule,size: 18,),
                            const SizedBox(width: 5,),
                            Text(
                              '${DateTime.now().difference(articles[index].createdAt).inHours} hours ago',
                              style: Theme.of(context).textTheme.bodySmall,
                            ),
                            const SizedBox(width: 20,),
                            const Icon(Icons.visibility,size: 18,),
                            const SizedBox(width: 5,),
                            Text(
                              '${articles[index].views} views',
                              style: const TextStyle(fontSize: 12),
                            ),
                          ],)
                        ],
                      ),
                    ),
                  ],
                ),
              );
            }),
          )).toList(),
          ),
        ),
      ],
    );
  }
}

class _DiscoverNews extends StatelessWidget {
  const _DiscoverNews({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.25,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Discover",
            style: Theme.of(context)
                .textTheme
                .headlineLarge!
                .copyWith(color: Colors.black, fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 5,
          ),
          Text(
            "News from all over the World!",
            style: Theme.of(context)
                .textTheme
                .bodySmall!
                .copyWith(color: Colors.black),
          ),
          const SizedBox(
            height: 20,
          ),
          TextFormField(
            decoration: InputDecoration(
              hintText: "Search",
              fillColor: Colors.grey.shade200,
              filled: true,
              prefixIcon: const Icon(
                Icons.search,
                color: Colors.black,
              ),
              suffixIcon: RotatedBox(
                  quarterTurns: 1,
                  child: const Icon(Icons.tune, color: Colors.black)),
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: BorderSide.none),
            ),
          ),
        ],
      ),
    );
  }
}
