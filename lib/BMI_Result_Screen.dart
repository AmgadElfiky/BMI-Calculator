import 'package:flutter/material.dart';

class BMIResultScreen extends StatelessWidget {
  bool isMale = true;
  double res = 120.0;
  int age = 20;

  BMIResultScreen(
      {@required this.isMale, @required this.res, @required this.age});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios_outlined),
          color: Colors.black,
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        backgroundColor: Colors.red[900],
        title: Text(
          'Result',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Container(
        width: double.infinity,
        color: Colors.black,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Gender : ${isMale ? 'Male' : 'Female'}',
              style: TextStyle(
                color: Colors.teal,
                fontSize: 30.0,
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Text(
              'Result : ${res.round()}',
              style: TextStyle(
                color: Colors.teal,
                fontSize: 30.0,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
