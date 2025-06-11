// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class VeroPage extends StatefulWidget {
  const VeroPage({Key? key}) : super(key: key);

  @override
  State<VeroPage> createState() => _VeroPageState();
}

class _VeroPageState extends State<VeroPage> {
  List<PostModel> posts = [
    PostModel(
        avatar:
            "https://instagram.fcmb11-1.fna.fbcdn.net/v/t51.2885-19/280601979_321098190011099_2298139029896812518_n.jpg?stp=dst-jpg_s320x320&_nc_ht=instagram.fcmb11-1.fna.fbcdn.net&_nc_cat=111&_nc_ohc=Qn5P0L4qNuQAX-XsOUm&edm=AOQ1c0wBAAAA&ccb=7-5&oh=00_AT_LBkbbJ7_UQ46MIlb2XIbxhuDqh35BR-GiMn4sMBdcKQ&oe=630A298E&_nc_sid=8fd12b",
        author: "Kalle Hallden",
        caption:
            "In last weeks podcast episode we talked about ways of funding a startup and some innovative ways to utilize open source when building a startup",
        tags: [
          'code',
          'algo',
          'developer',
          'angular',
          'software',
          'python',
          'flutter'
        ],
        photo: 'post2.jpeg',
        date: DateTime.now(),
        likeCount: 856,
        commentCount: 85),
    PostModel(
        avatar:
            "https://instagram.fcmb11-1.fna.fbcdn.net/v/t51.2885-19/276978157_264760199193892_6709045983454783025_n.jpg?stp=dst-jpg_s320x320&_nc_ht=instagram.fcmb11-1.fna.fbcdn.net&_nc_cat=104&_nc_ohc=U6B5kXFpBGcAX89zTGq&edm=AOQ1c0wBAAAA&ccb=7-5&oh=00_AT8EHlbB5d7O-kGD7sVoczwHb8S170-W233TytHsoKjwnQ&oe=630B035F&_nc_sid=8fd12b",
        author: "Vehan Hemsara",
        caption: "Custom line chart with flutter!",
        tags: ['code', 'algo', 'developer'],
        photo: 'post4.jpeg',
        date: DateTime.now(),
        likeCount: 1175,
        commentCount: 98),
    PostModel(
        avatar:
            "https://instagram.fcmb11-1.fna.fbcdn.net/v/t51.2885-19/295310263_2005323692988879_192442431266284434_n.jpg?stp=dst-jpg_s320x320&_nc_ht=instagram.fcmb11-1.fna.fbcdn.net&_nc_cat=1&_nc_ohc=_OycxPTZAiIAX9Klfo3&tn=mzpEx8VKjXTflDC7&edm=AOQ1c0wBAAAA&ccb=7-5&oh=00_AT9m_Q6Aj_JBs7O-IbeEpOkg5rnaWSzkqYarXN5z2MnNyQ&oe=630AB077&_nc_sid=8fd12b",
        author: "Khalled Nadam",
        caption:
            "I spent the day trying to deploy the calendar app and I failed",
        tags: ['code', 'algo', 'developer'],
        photo: 'post.jpeg',
        date: DateTime.now(),
        likeCount: 2458,
        commentCount: 125),
    PostModel(
        avatar:
            "https://instagram.fcmb11-1.fna.fbcdn.net/v/t51.2885-19/283991312_3302677446628885_7860643733642281108_n.jpg?stp=dst-jpg_s320x320&_nc_ht=instagram.fcmb11-1.fna.fbcdn.net&_nc_cat=101&_nc_ohc=TXgaYREmCxcAX8p7FWO&edm=AOQ1c0wBAAAA&ccb=7-5&oh=00_AT927w1FIJRklH83dVhyxpT5Wr15LiSPPU7cNaQ1LGIUcQ&oe=630B95BA&_nc_sid=8fd12b",
        author: "David Toth",
        caption:
            "I have a successful week behind me. I finished this week with all the new features that were included in version 1.1.0, but I also developed a new chart yesterday that will be available in version 1.1.1. The chart will calculate and draw the categories for the currently selected period, where your expense and incomes will be visible. I think this is a very useful chart because it is easy to keep track of how much expense and incomes a category had in the current period.",
        tags: ['code', 'developer'],
        photo: 'post3.jpeg',
        date: DateTime.now(),
        likeCount: 412,
        commentCount: 75),
    PostModel(
        avatar:
            "https://instagram.fcmb11-1.fna.fbcdn.net/v/t51.2885-19/277325659_148711920961973_1107088744007699452_n.jpg?stp=dst-jpg_s320x320&_nc_ht=instagram.fcmb11-1.fna.fbcdn.net&_nc_cat=105&_nc_ohc=_2KrLYruYPcAX-8jRka&edm=AOQ1c0wBAAAA&ccb=7-5&oh=00_AT-yK9tCfunGBQT04oqmms1OcXJaNekyOVu8r46F2jrYTA&oe=630BD1D0&_nc_sid=8fd12b",
        author: "Finsi",
        caption:
            "During this month will be learning about concurrency in Swift. I had already done some exercises but i want to go deeper in this topic. It’s likely that I create a sample app to put into practice all the knowledge so if you are also interested in this just let me know! So maybe I publish the code :)",
        tags: ['code', 'algo', 'developer'],
        photo: 'post5.jpeg',
        date: DateTime.now(),
        likeCount: 135,
        commentCount: 18),
    PostModel(
        avatar:
            "https://instagram.fcmb11-1.fna.fbcdn.net/v/t51.2885-19/295310263_2005323692988879_192442431266284434_n.jpg?stp=dst-jpg_s320x320&_nc_ht=instagram.fcmb11-1.fna.fbcdn.net&_nc_cat=1&_nc_ohc=_OycxPTZAiIAX9Klfo3&tn=mzpEx8VKjXTflDC7&edm=AOQ1c0wBAAAA&ccb=7-5&oh=00_AT9m_Q6Aj_JBs7O-IbeEpOkg5rnaWSzkqYarXN5z2MnNyQ&oe=630AB077&_nc_sid=8fd12b",
        author: "Khalled Nadam",
        caption: "Happy coding",
        tags: ['code', 'algo', 'developer', 'weekend', 'cool'],
        photo: 'post3.jpeg',
        date: DateTime.now(),
        likeCount: 4,
        commentCount: 2),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      extendBodyBehindAppBar: true,
      appBar: PreferredSize(
        preferredSize: Size(0.1, 55),
        child: ClipRect(
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 40, sigmaY: 40),
            child: AppBar(
              actions: [
                Icon(
                  Icons.bookmark_border_rounded,
                  size: 23,
                ),
                SizedBox(width: 15),
                Icon(
                  Icons.notifications_none_sharp,
                  size: 24,
                ),
                SizedBox(width: 10)
              ],
              centerTitle: false,
              leading: Icon(Icons.menu),
              title: Image(
                image: AssetImage('logo.png'),
                width: 65,
              ),
              elevation: 0,
              backgroundColor: Color.fromARGB(255, 0, 0, 0).withOpacity(0.4),
            ),
          ),
        ),
      ),
      backgroundColor: Color.fromARGB(255, 18, 18, 20),
      bottomNavigationBar: SizedBox(
        height: 90,
        child: ClipRRect(
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 70, sigmaY: 70),
            child: Container(
              color: Color.fromARGB(255, 0, 0, 0).withOpacity(0.7),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 26),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(
                      CupertinoIcons.home,
                      color: Color(0xff05AAAB),
                      size: 23,
                    ),
                    Icon(
                      CupertinoIcons.search,
                      color: Colors.white,
                      size: 23,
                    ),
                    Icon(
                      CupertinoIcons.add_circled,
                      color: Colors.white,
                      size: 35,
                    ),
                    Icon(
                      CupertinoIcons.phone,
                      color: Colors.white,
                      size: 23,
                    ),
                    Icon(
                      CupertinoIcons.rocket,
                      color: Colors.white,
                      size: 23,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: AppBar().preferredSize.height * 2),
            Filter(),
            SizedBox(height: 15),
            Column(
              children: posts.map((e) => Post(post: e)).toList(),
            ),
          ],
        ),
      ),
    );
  }
}

class PostModel {
  String photo;
  String author;
  String avatar;
  DateTime date;
  int likeCount;
  int commentCount;
  String caption;
  List<String> tags;
  PostModel({
    required this.photo,
    required this.author,
    required this.avatar,
    required this.date,
    required this.likeCount,
    required this.commentCount,
    required this.caption,
    required this.tags,
  });
}

class Post extends StatelessWidget {
  final PostModel post;
  const Post({Key? key, required this.post}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: const Border(
            top: BorderSide(color: Color.fromARGB(255, 28, 28, 28))),
        image:
            DecorationImage(image: AssetImage(post.photo), fit: BoxFit.cover),
      ),
      child: Stack(
        children: [
          Positioned.fill(
            child: ClipRRect(
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 30, sigmaY: 30),
                child: Container(
                  constraints: const BoxConstraints.expand(),
                  color: const Color.fromARGB(255, 0, 0, 0).withOpacity(0.5),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(13.0),
            child: Stack(
              children: [
                Column(children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          CircleAvatar(
                            backgroundImage: NetworkImage(post.avatar),
                            radius: 21,
                          ),
                          const SizedBox(width: 7),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                post.author,
                                style: const TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w400,
                                    fontSize: 15),
                              ),
                              const SizedBox(height: 3),
                              Row(
                                children: [
                                  Row(
                                    children: const [
                                      Icon(
                                        Icons.image_outlined,
                                        color: Colors.white,
                                        size: 12,
                                      ),
                                      SizedBox(width: 3),
                                      Text(
                                        'Photo',
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 10),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(width: 5),
                                  Row(
                                    children: [
                                      const Icon(
                                        Icons.date_range_outlined,
                                        color: Colors.white,
                                        size: 12,
                                      ),
                                      const SizedBox(width: 3),
                                      Text(
                                        DateFormat.MMMd().format(post.date),
                                        style: const TextStyle(
                                            color: Colors.white, fontSize: 10),
                                      ),
                                    ],
                                  ),
                                ],
                              )
                            ],
                          )
                        ],
                      ),
                      const Icon(
                        CupertinoIcons.heart,
                        color: Color(0xff05AAAB),
                      )
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(height: 10),
                      Container(
                        height: 350,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage(
                                post.photo,
                              ),
                              fit: BoxFit.cover),
                        ),
                      ),
                      const SizedBox(height: 30),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Row(
                                children: [
                                  Text(
                                    post.commentCount.toString(),
                                    style: const TextStyle(color: Colors.white),
                                  ),
                                  const SizedBox(width: 4),
                                  const Icon(
                                    CupertinoIcons.bubble_middle_bottom,
                                    color: Colors.white,
                                    size: 20,
                                  )
                                ],
                              ),
                              const SizedBox(width: 18),
                              Row(
                                children: [
                                  Text(
                                    post.likeCount.toString(),
                                    style: const TextStyle(color: Colors.white),
                                  ),
                                  const SizedBox(width: 4),
                                  const Icon(
                                    CupertinoIcons.heart,
                                    color: Colors.white,
                                    size: 20,
                                  )
                                ],
                              )
                            ],
                          ),
                          Row(
                            children: [
                              Row(
                                children: const [
                                  Icon(
                                    CupertinoIcons.share,
                                    color: Colors.white,
                                    size: 20,
                                  )
                                ],
                              ),
                              const SizedBox(width: 18),
                              Row(
                                children: const [
                                  Icon(
                                    CupertinoIcons.bookmark,
                                    color: Colors.white,
                                    size: 20,
                                  )
                                ],
                              ),
                              const SizedBox(width: 18),
                              Row(
                                children: const [
                                  Icon(
                                    CupertinoIcons.ellipsis_vertical,
                                    color: Colors.white,
                                    size: 20,
                                  )
                                ],
                              )
                            ],
                          ),
                        ],
                      ),
                      const SizedBox(height: 15),
                      Text(
                        post.caption,
                        style:
                            const TextStyle(color: Colors.white, fontSize: 15),
                      ),
                      const SizedBox(height: 8),
                      Wrap(
                        children: post.tags
                            .map((e) => Text(
                                  "#$e ",
                                  style:
                                      const TextStyle(color: Color(0xff05AAAB)),
                                ))
                            .toList(),
                      ),
                      const SizedBox(height: 10)
                    ],
                  ),
                ]),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class Filter extends StatelessWidget {
  const Filter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget filterItem(bool active, String text) {
      return Padding(
        padding: const EdgeInsets.only(right: 15),
        child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(100),
              color: active ? const Color(0xff05AAAB) : null),
          child: Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              child: Text(
                text,
                style: TextStyle(
                    color: active ? Colors.white : Colors.grey, fontSize: 13),
              ),
            ),
          ),
        ),
      );
    }

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 13, vertical: 8),
        width: double.infinity,
        height: 43,
        decoration: BoxDecoration(
          color: const Color.fromARGB(255, 25, 26, 28),
          borderRadius: BorderRadius.circular(100),
        ),
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              filterItem(true, "ALL"),
              filterItem(false, "PHOTOS"),
              filterItem(false, "VIDEOS"),
              filterItem(false, "LINKS"),
              filterItem(false, "MOVIES"),
              filterItem(false, "ALL"),
              filterItem(false, "ALL"),
              filterItem(false, "ALL"),
            ],
          ),
        ),
      ),
    );
  }
}
