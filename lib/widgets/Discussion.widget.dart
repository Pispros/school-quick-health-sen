import 'package:flutter/material.dart';
import 'package:from_css_color/from_css_color.dart';

Container discussionWidget(Size viewPort, imageUrl, drName) {
  return Container(
    height: 120,
    width: viewPort.width - 30,
    margin: EdgeInsets.only(bottom: 3),
    child: Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      elevation: 2,
      child: Row(
        children: [
          Container(
            width: 75,
            height: 75,
            margin: EdgeInsets.only(left: 15),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                image: DecorationImage(image: AssetImage(imageUrl))),
          ),
          Expanded(
              child: Row(
            children: [
              Container(
                margin: EdgeInsets.only(left: 15, top: 20),
                width: viewPort.width / 2.3,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "$drName",
                      textAlign: TextAlign.start,
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Lorem ipsum dolor sit amet, consectetur adipiscing elit",
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color: fromCssColor('#b3b3b3')),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 20),
                width: 70,
                child: Column(
                  children: [
                    Text(
                      "Hier",
                      style: TextStyle(
                          color: fromCssColor("#FFA217"),
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                        constraints:
                            BoxConstraints(minHeight: 20, minWidth: 20),
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: fromCssColor('#FFA217')),
                        child: Center(
                          child: Text(
                            "4",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                        )),
                  ],
                ),
              ),
            ],
          ))
        ],
      ),
    ),
  );
}
