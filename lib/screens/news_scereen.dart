import 'package:flutter/material.dart';
import 'package:newsapp/color/colors.dart';
import 'package:newsapp/controlling/bottomnav.dart';
import 'package:newsapp/screens/widgets/news_tile.dart';
import 'package:newsapp/screens/widgets/search_bar.dart';

class Mynewsdetail extends StatelessWidget {
  const Mynewsdetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text('Articals',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
            )),
      ),
      bottomNavigationBar: MyAppBottonNavigation(selectedind: 1),
      body: SafeArea(
          child: Padding(
        padding: EdgeInsets.all(10),
        child: ListView(
          children: const [
            MySearchBar(),
            SizedBox(
              height: 20,
            ),
            Column(
              children: [
                MynewsTile(
                    imgurl: 'assets/images/random.jpg',
                    author: 'Haris luli',
                    time: '69 Days ago',
                    title: 'News App in Flutter with Getx in Hindi API'),
                MynewsTile(
                    imgurl: 'assets/images/random.jpg',
                    author: 'Haris luli',
                    time: '69 Days ago',
                    title: 'News App in Flutter with Getx in Hindi API'),
                MynewsTile(
                    imgurl: 'assets/images/random.jpg',
                    author: 'Haris luli',
                    time: '69 Days ago',
                    title: 'News App in Flutter with Getx in Hindi API'),
              ],
            )
          ],
        ),
      )),
    );
  }
}
