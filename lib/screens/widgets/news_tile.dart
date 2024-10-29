import 'package:flutter/material.dart';
import 'package:newsapp/color/colors.dart';
import 'package:newsapp/screens/news_detail.dart';

class MynewsTile extends StatelessWidget {
  final String imgurl;
  final String author;
  final String time;
  final String title;
  const MynewsTile(
      {super.key,
      required this.imgurl,
      required this.author,
      required this.time,
      required this.title});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => Mynews()));
        },
        child: Container(
          margin: EdgeInsets.only(bottom: 15),
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: MyColors.mycontaner,
          ),
          child: Row(
            children: [
              Container(
                height: 100,
                width: 100,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.black,
                ),
                child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Image.asset(
                      imgurl,
                      fit: BoxFit.cover,
                      height: double.infinity,
                      width: double.infinity,
                    )),
              ),
              SizedBox(
                width: 12,
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        CircleAvatar(
                          radius: 12,
                          backgroundColor: Colors.brown,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          '$author',
                          maxLines: 2,
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      '$title',
                      maxLines: 2,
                    ),
                    SizedBox(height: 10),
                    Text('$time',
                        style: TextStyle(
                            fontSize: 10, fontWeight: FontWeight.w300)),
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
