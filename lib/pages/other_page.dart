import 'package:flutter/material.dart';

class OtherPage extends StatelessWidget {
  const OtherPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Other page"),
      ),
      body: Center(
        child: Text(
          "Second Page",
          style: TextStyle(fontSize: 50.0),
        ),
      ),
    );
  }
}
