import 'package:flutter/material.dart';

class PlusScreen extends StatelessWidget {
  const PlusScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var viewPort = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        margin: EdgeInsets.only(top: viewPort.height / 15),
        child: SingleChildScrollView(
          child: Column(
            children: [Text("More Options")],
          ),
        ),
      ),
    );
  }
}
