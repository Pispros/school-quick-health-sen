import 'package:flutter/material.dart';
import 'package:from_css_color/from_css_color.dart';
import 'package:health_sen/constants/Colors.dart';
import 'package:health_sen/widgets/Discussion.widget.dart';

class MessageScreen extends StatelessWidget {
  const MessageScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var viewPort = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        margin: EdgeInsets.only(top: viewPort.height / 15),
        padding: EdgeInsets.only(left: 10, right: 10),
        child: SingleChildScrollView(
          child: Column(
            children: [
              personPresentation(viewPort),
              todayAdvice(viewPort),
              searchBar(viewPort),
              discussionList(viewPort)
            ],
          ),
        ),
      ),
    );
  }

  Container personPresentation(Size viewPort) {
    return Container(
      padding: EdgeInsets.only(left: 15, right: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Messages",
                style: TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight.bold,
                ),
              )
            ],
          ),
          Container(
            width: 80,
            height: 80,
            decoration: BoxDecoration(
              border: Border.all(color: Colors.black26),
              shape: BoxShape.circle,
              image: DecorationImage(
                  image: AssetImage('images/avatar.jpeg'), fit: BoxFit.cover),
            ),
          )
        ],
      ),
    );
  }

  Container todayAdvice(Size viewPort) {
    return Container(
      margin: EdgeInsets.only(top: 10),
      padding: EdgeInsets.all(15),
      width: viewPort.width - 30,
      height: 125,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: [appColor, fromCssColor("#4E95FF")])),
      child: Row(children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Conseil du jour",
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 20),
            ),
            Container(
              width: viewPort.width - 180,
              child: Text(
                "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore",
                style: TextStyle(color: Colors.white, fontSize: 15),
              ),
            ),
          ],
        ),
        Container(
          width: 100,
          height: 100,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('images/goodAdvice.png'),
                  fit: BoxFit.cover)),
        )
      ]),
    );
  }

  Container searchBar(viewPort) {
    return Container(
      margin: EdgeInsets.only(top: 15),
      padding: EdgeInsets.all(15),
      width: viewPort.width - 35,
      height: 70,
      decoration: BoxDecoration(
          color: fromCssColor("#E8E8E8"),
          borderRadius: BorderRadius.circular(15)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(
            width: viewPort.width - 100,
            child: TextField(
              decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: "Rechercher un méssage",
                  focusColor: fromCssColor("#E8E8E8")),
            ),
          ),
          Icon(
            Icons.search,
            size: 30,
          )
        ],
      ),
    );
  }

  dynamic discussionList(viewPort) {
    return Container(
      margin: EdgeInsets.only(top: 15),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Text(
          "Discussion",
          style: TextStyle(
            fontSize: 26,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(
          height: 15,
        ),
        discussionWidget(viewPort, 'images/doc1.png', 'Dr. Mariama Djambony'),
        discussionWidget(viewPort, 'images/doc3.png', 'Dr. Sokhna Kane'),
        discussionWidget(viewPort, 'images/doc2.png', 'Dr. Jack Ma')
      ]),
    );
  }
}
