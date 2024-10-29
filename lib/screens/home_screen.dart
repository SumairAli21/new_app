import 'package:flutter/material.dart';
import 'package:newsapp/controlling/bottomnav.dart';
import 'package:newsapp/controlling/new_api.dart';
import 'package:newsapp/models/news_model.dart';
import 'package:newsapp/screens/widgets/news_tile.dart';
import 'package:newsapp/screens/widgets/new_container.dart';

class MyHome_Screen extends StatelessWidget {
  MyHome_Screen({super.key});

  final Newsapi newsApi = Newsapi();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text(
          'NEWZEE',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
      ),
      bottomNavigationBar: MyAppBottonNavigation(selectedind: 0),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: FutureBuilder<List<Newsmodel>>(
          future: newsApi.getapinews(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const Center(child: CircularProgressIndicator());
            } else if (snapshot.hasError) {
              return Center(child: Text('Error: ${snapshot.error}'));
            } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
              return const Center(child: Text('No news available.'));
            } else {
              List<Newsmodel> newsList = snapshot.data!;

              return SingleChildScrollView(
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text(
                          'Hottest News',
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.w500),
                        ),
                        Text(
                          'See All',
                          style: TextStyle(
                              fontSize: 10, fontWeight: FontWeight.w300),
                        ),
                      ],
                    ),
                    const SizedBox(height: 20),
                    // Horizontal scroll of trending news
                    // SingleChildScrollView(
                    //   scrollDirection: Axis.horizontal,
                    //    child: Row(
                    //     children: newsList.take(10).map((newsItem) {
                    //       return Mytrendingcard(
                    //         imgurl: newsItem.urlToImage ?? 'no image',
                    //         tag: newsItem.author ?? 'Unknown',
                    //         title: newsItem.title ?? 'No Title',
                    //         time: newsItem.publishedAt ?? 'Unknown Time',
                    //         author: newsItem.author ?? 'Unknown',
                    //       );
                    //     }).toList(),
                    //   ),
                    // ),
                    const SizedBox(height: 20),
                    // News for you section
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text(
                          'NEWS FOR YOU',
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.w500),
                        ),
                        Text(
                          'See All',
                          style: TextStyle(
                              fontSize: 10, fontWeight: FontWeight.w300),
                        ),
                      ],
                    ),
                    const SizedBox(height: 20),
                    // News tiles column
                    // Column(
                    //   children: newsList.map((newsItem) {
                    //     return MynewsTile(
                    //       imgurl:
                    //           newsItem.urlToImage ?? 'assets/images/random.jpg',
                    //       author: newsItem.author ?? 'Unknown',
                    //       time: newsItem.publishedAt ?? 'Unknown Time',
                    //       title: newsItem.title ?? 'No Title',
                    //     );
                    //   }).toList(),
                    // ),
                  ],
                ),
              );
            }
          },
        ),
      ),
    );
  }
}
