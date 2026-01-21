import 'package:flutter/material.dart';

class HmHot extends StatelessWidget {
  const HmHot({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        alignment: Alignment.center,
        color: Colors.blue,
        height: 200,
        child: Text('HmHot - 爆款组件',style: TextStyle(color:Colors.white),),
    );
  }
}