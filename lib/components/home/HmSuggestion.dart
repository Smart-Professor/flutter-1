import 'package:flutter/material.dart';

class HmSuggestion extends StatelessWidget {
  const HmSuggestion({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(padding: EdgeInsets.symmetric(horizontal: 10),child:Container(
        alignment: Alignment.center,
        height:300,
        child: Text('HmSuggestion - 推荐组件',style: TextStyle(color: Colors.black),),
    ),
    );
    
  }
}