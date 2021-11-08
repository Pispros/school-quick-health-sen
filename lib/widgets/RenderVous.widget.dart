import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:health_sen/constants/Colors.dart';

Container rendezVous(Size viewPort) {
  return Container(
    width: viewPort.width - 35,
    margin: EdgeInsets.only(top: 15),
    child: Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Rendez vous",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Row(
              children: [
                Text(
                  "Voir plus",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  width: 15,
                ),
                Icon(CupertinoIcons.plus_circled)
              ],
            )
          ],
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.max,
            children: [
              generateACard(viewPort, 'images/doc1.png', 'Dr. Mariam Djambony',
                  'Pneumologue', '09/10/2021'),
              generateACard(viewPort, 'images/doc2.png', 'Dr. Dr. Jack Ma',
                  'Cardiologue', '22/04/2021'),
            ],
          ),
        )
      ],
    ),
  );
}

Container generateACard(viewPort, imageUrl, drName, drSpec, date) {
  return Container(
    height: 125,
    margin: EdgeInsets.only(right: 20, bottom: 40, top: 10),
    width: viewPort.width - 100,
    decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
    child: Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      elevation: 2,
      child: Container(
        padding: EdgeInsets.all(15),
        child: Row(
          children: [
            Container(
              width: 75,
              height: 75,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  image: DecorationImage(image: AssetImage(imageUrl))),
            ),
            Container(
              margin: EdgeInsets.only(left: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    "$drName",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    "$drSpec",
                    style: TextStyle(
                      color: Colors.black26,
                      fontSize: 16,
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Row(
                    children: [
                      Icon(
                        CupertinoIcons.calendar_today,
                        color: appColor,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        "$date",
                        style: TextStyle(
                          color: Colors.black45,
                          fontSize: 16,
                        ),
                      ),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    ),
  );
}
