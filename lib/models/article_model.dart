import 'package:equatable/equatable.dart';

class Article extends Equatable {
  final String id;
  final String title;
  final String subtitle;
  final String body;
  final String author;
  final String authorImageUrl;
  final String category;
  final String imageUrl;
  final int views;
  final DateTime createdAt;

  const Article({
      required this.id,
      required this.title,
      required this.subtitle,
      required this.body,
      required this.author,
      required this.authorImageUrl,
      required this.category,
      required this.imageUrl,
      required this.views,
      required this.createdAt
  });

  static List<Article> articles = [
    Article(
        id: "1",
        title: "Lorem Ipsum",
        subtitle: "There is no one who loves pain itself, who seeks after it and wants to have it, simply because it is pain...",
        body: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras feugiat elit velit. Pellentesque eu ante maximus magna pellentesque tristique. Vestibulum sagittis sapien ut enim sagittis hendrerit. Nullam magna sem, rutrum non pulvinar id, consequat vel enim. Nam varius dui sit amet porta ultrices. Nam et risus elementum, hendrerit tortor et, finibus risus. Nam ac turpis pretium, vehicula orci ut, pharetra sapien. Aenean eu velit hendrerit, ultricies felis tristique, pulvinar nibh. Nullam ex diam, facilisis in nibh quis, varius maximus dui. Mauris blandit consectetur pellentesque. In gravida augue et ligula sollicitudin eleifend. Mauris vel auctor velit. Donec quis finibus urna. Cras pretium pretium enim, et accumsan neque ultrices vel.",
        author: "A.Wright",
        authorImageUrl: "https://images.unsplash.com/photo-1519085360753-af0119f7cbe7?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NDV8fHBlb3BsZXxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60",
        category: "Politics",
        imageUrl: "https://images.unsplash.com/photo-1509023464722-18d996393ca8?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8ZGFya3xlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60",
        views: 1423,
        createdAt: DateTime.now().subtract(Duration(hours: 5)),
    ),
    Article(
        id: "2",
        title: "Lorem Ipsum",
        subtitle: "There is no one who loves pain itself, who seeks after it and wants to have it, simply because it is pain...",
        body: "Etiam ornare dolor in eleifend dictum. Cras orci mi, pharetra non lacinia eu, laoreet eu mauris. Curabitur finibus, augue non molestie vulputate, lectus velit aliquet nulla, nec sagittis nunc nisi non felis. Duis sodales tellus magna, sit amet vehicula justo faucibus ut. Aliquam tristique accumsan nisl, eu ultricies ipsum. Interdum et malesuada fames ac ante ipsum primis in faucibus. Nam maximus felis id nisi molestie tincidunt. Nam at nibh semper, congue tortor ut, molestie tellus. Sed sagittis, dolor at tempus iaculis, turpis ligula tincidunt metus, vel auctor leo quam non nisl. Quisque ultrices augue in tempus pellentesque. Donec eget elementum metus. Cras non diam orci. Vivamus consequat fermentum arcu, ut imperdiet est finibus eget. Nam mollis augue eget turpis iaculis placerat.",
        author: "B.Franklin",
        authorImageUrl: "https://images.unsplash.com/photo-1507003211169-0a1dd7228f2d?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTZ8fHBlb3BsZXxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60",
        category: "Politics",
        imageUrl: "https://images.unsplash.com/photo-1676614919176-647f68c50d38?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwxMnx8fGVufDB8fHx8&auto=format&fit=crop&w=500&q=60",
        views: 872,
        createdAt: DateTime.now().subtract(Duration(hours: 3)),
    ),
    Article(
        id: "3",
        title: "Lorem Ipsum",
        subtitle: "There is no one who loves pain itself, who seeks after it and wants to have it, simply because it is pain...",
        body: "Phasellus ac ipsum quis lectus mattis rutrum. Aliquam hendrerit lectus quis nisi lacinia, pretium cursus quam interdum. Mauris eget porta augue. Duis ultricies tincidunt massa ac tincidunt. Ut eu dolor nulla. Nulla in lacus tristique, consequat odio non, fringilla felis. Nullam ut massa vel purus ornare ultricies a et neque. Proin id dui euismod, suscipit dui et, efficitur libero. Nam sit amet luctus mi. Fusce nec felis ullamcorper, dapibus nunc quis, aliquam eros. Nunc nisl felis, porta id risus quis, porttitor sollicitudin dui. Nunc posuere orci nec elit dictum, id hendrerit justo faucibus. Sed in urna semper, porttitor diam ut, ullamcorper libero.",
        author: "J.Benjamin",
        authorImageUrl: "https://images.unsplash.com/photo-1463453091185-61582044d556?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mjh8fHBlb3BsZXxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60",
        category: "Politics",
        imageUrl: "https://images.unsplash.com/photo-1676677470461-e39d538cf7f3?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwyN3x8fGVufDB8fHx8&auto=format&fit=crop&w=500&q=60",
        views: 712,
        createdAt: DateTime.now().subtract(Duration(hours: 4)),
    ),
    Article(
        id: "4",
        title: "Lorem Ipsum",
        subtitle: "There is no one who loves pain itself, who seeks after it and wants to have it, simply because it is pain...",
        body: "Nullam enim odio, volutpat vitae nisi in, dignissim semper turpis. Nullam quam lorem, congue sed velit sed, eleifend semper dolor. Nullam eleifend arcu eget nibh pretium, quis vulputate metus scelerisque. Nam tincidunt nisi tincidunt nulla sollicitudin, at mollis nibh sagittis. Nulla facilisi. Integer varius magna sapien, in aliquet massa lacinia ut. Suspendisse tortor urna, mollis sed commodo id, auctor pulvinar neque. Ut bibendum ultricies arcu, id dictum nunc convallis sit amet. Sed quis lorem ut ante vestibulum dignissim et quis nisl. In placerat egestas mi bibendum maximus. Sed mollis nunc molestie lorem tincidunt tincidunt. Nunc viverra fringilla feugiat. Vestibulum elit augue, consectetur ac augue sit amet, semper semper neque. Morbi a sagittis purus. Nunc vitae nulla sit amet enim finibus tincidunt. Vivamus venenatis sem non odio pellentesque tristique.",
        author: "A.Jack",
        authorImageUrl: "https://images.unsplash.com/photo-1539571696357-5a69c17a67c6?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Nnx8cGVvcGxlfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60",
        category: "Politics",
        imageUrl: "https://images.unsplash.com/photo-1674574124345-02c525664b65?ixlib=rb-4.0.3&ixid=MnwxMjA3fDF8MHxlZGl0b3JpYWwtZmVlZHwzNXx8fGVufDB8fHx8&auto=format&fit=crop&w=500&q=60",
        views: 456,
        createdAt: DateTime.now().subtract(Duration(hours: 7)),
    ),
    Article(
        id: "5",
        title: "Lorem Ipsum",
        subtitle: "There is no one who loves pain itself, who seeks after it and wants to have it, simply because it is pain...",
        body: "Aliquam eros ante, volutpat ac leo ut, venenatis auctor velit. Phasellus dolor elit, faucibus a tempus nec, vulputate id eros. Nulla vel euismod metus. Pellentesque venenatis nisi eget interdum vestibulum. Aliquam velit magna, commodo vitae blandit in, malesuada ac tellus. Donec sit amet lectus sit amet justo imperdiet efficitur at sit amet velit. Nunc id lacinia justo, sed imperdiet elit. Nunc finibus, velit in sagittis pulvinar, ligula est convallis ante, ultricies convallis elit est in arcu. Suspendisse gravida odio non tellus tempus interdum. In in lectus at est egestas ornare. Sed a mauris non dolor consectetur ullamcorper non ac augue.",
        author: "K.Miles",
        authorImageUrl: "https://images.unsplash.com/photo-1522529599102-193c0d76b5b6?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NDd8fHBlb3BsZXxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60",
        category: "Politics",
        imageUrl: "https://images.unsplash.com/photo-1676647253166-1f1704cbc8ca?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHw4NXx8fGVufDB8fHx8&auto=format&fit=crop&w=500&q=60",
        views: 1234,
        createdAt: DateTime.now().subtract(Duration(hours: 1))
    )

  ];

  @override
  List<Object?> get props => [
    id,
    title,
    subtitle,
    body,
    author,
    authorImageUrl,
    category,
    imageUrl,
    views,
    createdAt,
  ];
}
