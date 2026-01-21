import 'package:flutter/material.dart';

class CategoyView extends StatefulWidget {
  CategoyView({Key? key}) : super(key: key);

  @override
  _CategoyViewState createState() => _CategoyViewState();
}

class _CategoyViewState extends State<CategoyView> {
  @override
  Widget build(BuildContext context) {
    return Center(
       child: Text("购物车"),
    );
  }
}