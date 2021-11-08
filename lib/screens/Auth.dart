import 'package:flutter/material.dart';
import 'package:health_sen/constants/Colors.dart';

class AuthScreen extends StatefulWidget {
  AuthScreen({Key? key}) : super(key: key);

  @override
  _AuthScreenState createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  @override
  Widget build(BuildContext context) {
    var viewPort = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        height: viewPort.height,
        width: viewPort.width,
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
                colors: [appColor, Colors.blueAccent])),
        padding: EdgeInsets.only(top: viewPort.height / 3),
        child: Center(
          heightFactor: viewPort.height,
          child: Column(
            children: [
              Container(
                width: viewPort.width - 150,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: TextField(
                  decoration: InputDecoration(
                      hintText: "Nom d'utilisateur",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10))),
                ),
              ),
              SizedBox(
                height: 40,
              ),
              Container(
                width: viewPort.width - 150,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                      hintText: "Mot de passe",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10))),
                ),
              ),
              SizedBox(
                height: 40,
              ),
              Container(
                width: viewPort.width - 150,
                height: 50,
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(15)),
                child: ElevatedButton(
                    clipBehavior: Clip.antiAlias,
                    style: ElevatedButton.styleFrom(
                      primary: Colors.white,
                    ),
                    onPressed: () {
                      Navigator.of(context).pushNamed('home');
                    },
                    child: Center(
                      child: Text(
                        "Se connecter",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 22,
                            color: appColor),
                      ),
                    )),
              ),
              SizedBox(
                height: viewPort.height / 4.5,
              ),
              Container(
                height: 50,
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'HEALTH SEN',
                      style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w300,
                          color: Colors.white),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 10),
                      child: Image(
                        image: AssetImage('images/cardioIcon.png'),
                        height: 50,
                        width: 50,
                      ),
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
}
