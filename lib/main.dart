import 'package:flutter/material.dart';

//所以GestureDetector点击事件
//

void main() {
  runApp(Mainpage());
}

class Mainpage extends StatefulWidget {
  Mainpage({Key? key}) : super(key: key);

  @override
  _MainpageState createState() => _MainpageState();
}

class _MainpageState extends State<Mainpage> {
  int a = 1;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Row(
            children: [
              TextButton(
                onPressed: () {
                  a--;
                  setState(() {});
                },
                child: Text("-"),
              ),
              Text(a.toString()),
              TextButton(
                onPressed: () {
                  a++;
                  setState(() {});
                },
                child: Text("++"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
