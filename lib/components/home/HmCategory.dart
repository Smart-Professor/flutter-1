import 'package:flutter/material.dart';

class HmCategory extends StatelessWidget {
  const HmCategory({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 10,
        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Container(
              alignment: Alignment.center,
              height: 100,
              width: 80,
              margin: EdgeInsets.symmetric(horizontal: 10),
              color: Colors.blue,
              child: Text("分类$index", style: TextStyle(color: Colors.white)),
            ),
          );
        },
      ),
    );
  }
}
