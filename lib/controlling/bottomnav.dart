import 'package:flutter/material.dart';
import 'package:newsapp/color/colors.dart';
import 'package:newsapp/screens/home_screen.dart';
import 'package:newsapp/screens/news_scereen.dart';

class MyAppBottonNavigation extends StatefulWidget {
  final int selectedind;
  const MyAppBottonNavigation({super.key, required this.selectedind});

  @override
  State<MyAppBottonNavigation> createState() => _MyAppBottonNavigationState();
}

class _MyAppBottonNavigationState extends State<MyAppBottonNavigation> {
  void _onItemTapped(int index) {
    switch (index) {
      case 0:
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => MyHome_Screen()),
        );
        break;
      case 1:
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => Mynewsdetail()),
        );
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 60,
            width: 350,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20)),
                boxShadow: [
                  BoxShadow(
                      color: MyColors.mycontaner,
                      blurRadius: 5,
                      spreadRadius: 5)
                ],
                color: MyColors.mycontaner),
            child: Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 20,
              ),
              child: BottomNavigationBar(
                currentIndex: widget.selectedind,
                onTap: _onItemTapped,
                backgroundColor: Colors.transparent,
                selectedItemColor: Colors.grey,
                type: BottomNavigationBarType.fixed,
                elevation: 0,
                items: const [
                  BottomNavigationBarItem(
                    icon: Icon(Icons.home),
                    label: 'Home',
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(Icons.book),
                    label: 'Articals',
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
