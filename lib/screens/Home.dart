import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:health_sen/constants/Colors.dart';
import 'package:health_sen/screens/Message.dart';
import 'package:health_sen/screens/Person.dart';
import 'package:health_sen/screens/Plus.dart';
import 'package:health_sen/screens/Welcome.dart';
import 'package:icon_badge/icon_badge.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedPage = 0;
  final _pageOptions = [
    WelcomeScreen(),
    MessageScreen(),
    PlusScreen(),
    PersonneScreen()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pageOptions[selectedPage],
      bottomNavigationBar: ConvexAppBar(
          style: TabStyle.reactCircle,
          backgroundColor: Colors.white,
          activeColor: appColor,
          color: Colors.black54,
          items: [
            TabItem(icon: CupertinoIcons.home),
            TabItem(icon: Icons.message_outlined),
            TabItem(icon: CupertinoIcons.plus_app),
            TabItem(icon: CupertinoIcons.person),
          ],
          initialActiveIndex: 0,
          onTap: (int index) {
            setState(() {
              print(index);
              selectedPage = index;
            });
          }),
    );
  }
}
