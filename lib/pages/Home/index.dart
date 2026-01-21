import 'package:flutter/material.dart';
import 'package:one/components/home/HmCategory.dart';
import 'package:one/components/home/HmHot.dart';
import 'package:one/components/home/HmMoreList.dart';
import 'package:one/components/home/HmSlider.dart';
import 'package:one/components/home/HmSuggestion.dart';

class HomeView extends StatefulWidget {
  HomeView({Key? key}) : super(key: key);

  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  List<Widget> _getScrollchildern() {
    return [
      SliverToBoxAdapter(child:HmSlider(),),

      SliverToBoxAdapter(child:SizedBox(height: 10,),),

      SliverToBoxAdapter(child:HmCategory(),),

      SliverToBoxAdapter(child:SizedBox(height: 10,),),

      SliverToBoxAdapter(child:HmSuggestion(),),

      SliverToBoxAdapter(child:SizedBox(height: 10)),

      SliverToBoxAdapter(
      child: Padding(
      padding: EdgeInsets.symmetric(horizontal:10),
      child: 
        Flex(direction: Axis.horizontal,
      children: [
        Expanded(child: HmHot()),
        SizedBox(width: 10,),
        Expanded(child: HmHot()),
      ]
            )
      
          )
      ),
      SliverToBoxAdapter(child:SizedBox(height: 10)),
      
      HmMoreList(),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(slivers: _getScrollchildern());
  }
}
