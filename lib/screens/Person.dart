import 'package:flutter/material.dart';

class PersonneScreen extends StatelessWidget {
  const PersonneScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var viewPort = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        margin: EdgeInsets.only(top: viewPort.height / 15),
        child: SingleChildScrollView(
          child: Column(
            children: [Text("Person Screen")],
          ),
        ),
      ),
    );
  }
}
