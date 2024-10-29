import 'package:flutter/material.dart';
import 'package:newsapp/color/colors.dart';
import 'package:newsapp/screens/news_detail.dart';

class Mytrendingcard extends StatelessWidget {
  final String imgurl;
  final String tag;
  final String title;
  final String time;
  final String author;
  const Mytrendingcard(
      {super.key,
      required this.imgurl,
      required this.tag,
      required this.title,
      required this.time,
      required this.author});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => Mynews()));
        },
        child: Container(
          margin: EdgeInsets.only(right: 10),
          padding: EdgeInsets.all(5),
          // height: 300,
          width: 270,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: MyColors.mycontaner),
          child: Column(
            children: [
              Container(
                height: 200,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.black),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.asset(
                    imgurl,
                    fit: BoxFit.cover,
                    height: double.infinity,
                    width: double.infinity,
                  ),
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '$tag',
                    style: TextStyle(fontSize: 10, fontWeight: FontWeight.w300),
                  ),
                  Text(
                    '$time',
                    style: TextStyle(fontSize: 10, fontWeight: FontWeight.w300),
                  ),
                ],
              ),
              SizedBox(
                height: 5,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Flexible(
                    child: Text(
                      '$title',
                      maxLines: 2,
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 5),
              Row(
                children: [
                  SizedBox(
                    width: 5,
                  ),
                  CircleAvatar(
                    radius: 15,
                    backgroundColor: Colors.brown,
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Text(
                    '$author',
                    maxLines: 2,
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
                  ),
                ],
              ),
              SizedBox(height: 10),
            ],
          ),
        ));
  }
}
