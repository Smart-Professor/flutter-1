import 'package:flutter/material.dart';
import 'package:one/pages/Category/index.dart';
import 'package:one/pages/Home/index.dart';
import 'package:one/pages/cart/index.dart';
import 'package:one/pages/mine/index.dart';

class MainPage extends StatefulWidget {
  MainPage({Key? key}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  final List<Map<String, String>> _tabList = [
    {
      "icon": "lib/assets/home.png",
      "icon-on": "lib/assets/home-on.png",
      "text": "首页",
    },
    {
      "icon": "lib/assets/tab.png",
      "icon-on": "lib/assets/tab-on.png",
      "text": "分类",
    },
    {
      "icon": "lib/assets/d.png",
      "icon-on": "lib/assets/daizio.png",
      "text": "购物袋",
    },
    {
      "icon": "lib/assets/people.png",
      "icon-on": "lib/assets/people-on.png",
      "text": "个人",
    },
  ];
  int _currentIndex = 0;

  List<BottomNavigationBarItem> _getTabBarWidget() {
    return List.generate(_tabList.length, (int index) {
      return BottomNavigationBarItem(
        icon: Image.asset(_tabList[index]["icon"]!, width: 30, height: 30),
        activeIcon: Image.asset(
          _tabList[index]["icon-on"]!,
          width: 30,
          height: 30,
        ),
        label: _tabList[index]["text"],
      );
    });
  }
  
  List<Widget> _getChildren(){
    return[HomeView(),CategoyView(),cartView(),mineview()];
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child:IndexedStack(
        index:_currentIndex,
        children: _getChildren(),
      )),
      bottomNavigationBar: BottomNavigationBar(
        showUnselectedLabels: true,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.black54,
        onTap: (int index) {
          _currentIndex = index;
          setState(() {});
        },
        currentIndex: _currentIndex,
        items: _getTabBarWidget(),
      ),
    );
  }
}
