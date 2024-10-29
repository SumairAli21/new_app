import 'package:flutter/material.dart';

class Mynews extends StatelessWidget {
  const Mynews({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
              padding: EdgeInsets.all(10),
              child: ListView(
                children: [
                  Container(
                      height: 400,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20)),
                      child: Row(
                        children: [
                          Expanded(
                              child: ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Image.asset(
                              'assets/images/random.jpg',
                              fit: BoxFit.cover,
                              height: double.infinity,
                              width: double.infinity,
                            ),
                          )),
                        ],
                      )),
                  SizedBox(height: 20),
                  Text(
                    'A lot of popular blogs and websites have discovered formulas that deliver results every time.',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 10),
                  Text(
                    '2 Days ago',
                    style: TextStyle(fontSize: 10, fontWeight: FontWeight.w300),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      CircleAvatar(
                        radius: 20,
                        backgroundColor: Colors.brown,
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Text(
                        'Sumair Ali',
                        maxLines: 2,
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    'Swedish filmmaker Göran Hugo Olsson has become known for his televisual explorations of historical and political phenomena—predominantly from a distinctly Swedish perspective, for better or worse. Deeply rooted in the audiovisual archives of Sveriges Television (SVT), his films are the result of long and meticulous research, framed as thorough within institutional and ideological constraints. Premiered in the 81st Venice Film Festival’s Out of Competition section, Olsson’s latest archive-based documentary, Israel Palestine on Swedish TV 1958–1989 offers a thirty-one-year chronicle of how the two countries and their conflicts were viewed through the "Swedish angle".',
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.w300),
                  )
                ],
              ))),
    );
  }
}
