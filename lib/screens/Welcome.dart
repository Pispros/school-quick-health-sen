import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:from_css_color/from_css_color.dart';
import 'package:health_sen/constants/Colors.dart';
import 'package:health_sen/widgets/RenderVous.widget.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var viewPort = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        margin: EdgeInsets.only(top: viewPort.height / 15),
        child: SingleChildScrollView(
          child: Column(
            children: [
              personPresentation(viewPort),
              hourTake(viewPort),
              listMainOptions(viewPort),
              rendezVousList(viewPort)
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
              Text("Nanga Def,"),
              Text(
                "Fatoumata",
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

  Container hourTake(Size viewPort) {
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
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Heure de prise :",
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
          Text(
            "08h",
            style: TextStyle(
                color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20),
          ),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                ElevatedButton(
                  onPressed: () {},
                  child: Text("Déja pris 🙂",
                      style: TextStyle(color: Colors.black)),
                  style: ElevatedButton.styleFrom(primary: Colors.white),
                ),
                SizedBox(
                  width: 15,
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: Text("Me rappeler",
                      style: TextStyle(color: Colors.white)),
                  style: ElevatedButton.styleFrom(
                      primary: fromCssColor("#FFA217")),
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  Container listMainOptions(Size viewPort) {
    return Container(
      width: viewPort.width - 30,
      margin: EdgeInsets.only(top: 20),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Etat actuel",
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
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              aCard(fromCssColor("#FFA217"), "Mettre à jour",
                  CupertinoIcons.plus, viewPort),
              aCard(appColor, "37° C", CupertinoIcons.thermometer, viewPort),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              aCard(appColor, "80 BPM", CupertinoIcons.heart, viewPort),
              aCard(appColor, "110/70", CupertinoIcons.waveform, viewPort),
            ],
          ),
        ],
      ),
    );
  }

  Container aCard(color, text, icon, viewPort) {
    return Container(
      height: 150,
      width: viewPort.width / 2.4,
      padding: EdgeInsets.only(top: 10, bottom: 20, right: 10),
      margin: EdgeInsets.only(top: 15),
      decoration:
          BoxDecoration(color: color, borderRadius: BorderRadius.circular(20)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Icon(
            icon,
            color: Colors.white,
            size: 57,
          ),
          Text(
            text,
            style: TextStyle(color: Colors.white, fontSize: 22),
          )
        ],
      ),
    );
  }

  dynamic rendezVousList(viewPort) {
    return rendezVous(viewPort);
  }
}
