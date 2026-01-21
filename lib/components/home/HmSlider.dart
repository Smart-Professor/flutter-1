import 'package:flutter/material.dart';

class HmSlider extends StatelessWidget {
  const HmSlider({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      child: Container(
        height:300,
        color: Colors.blue,
        alignment: Alignment.center,
        child: Text('HmSlider - 录播图组件',style: TextStyle(color: Colors.white,fontSize:20),),
      ),
    );
  }
}