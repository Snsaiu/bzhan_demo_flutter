import 'package:bzhan_demo/home/home_view.dart';
import 'package:bzhan_demo/home/mine_view.dart';
import 'package:bzhan_demo/home/search_view.dart';
import 'package:bzhan_demo/home/shopping_view.dart';
import 'package:flutter/material.dart';

class BottomNaviagetionComponent extends StatefulWidget {
  BottomNaviagetionComponent({Key key}) : super(key: key);

  @override
  _BottomNaviagetionComponentState createState() =>
      _BottomNaviagetionComponentState();
}

class _BottomNaviagetionComponentState
    extends State<BottomNaviagetionComponent> {
  @override
  void initState() {
    this.currentPage = this.pages[0];
    this.currentIndex = 0;
  }

  List<Widget> pages = [
    HomeView(),
    SearchView(),
    ShoppingView(),
    MineView(),
  ];

  int currentIndex = 0;
  var currentPage = null;

  List<BottomNavigationBarItem> baritems = [
    BottomNavigationBarItem(icon: Icon(Icons.home), label: "主页"),
    BottomNavigationBarItem(icon: Icon(Icons.home), label: "主页"),
    BottomNavigationBarItem(icon: Icon(Icons.home), label: "主页"),
    BottomNavigationBarItem(icon: Icon(Icons.home), label: "主页"),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            CircleAvatar(
              backgroundImage: AssetImage("assets/avtor.jpg"),
              radius: MediaQuery.of(context).padding.top - 10,
            ),
            Container(
              margin: EdgeInsets.only(left: 15),
              alignment: Alignment(-0.9, 0),
              width: 150,
              height: 35,
              child: Icon(Icons.search),
              decoration: BoxDecoration(
                  color: Colors.black26,
                  borderRadius: BorderRadius.all(Radius.circular(20))),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: baritems,
        currentIndex: currentIndex,
        onTap: (index) {
          setState(() {
            currentIndex = index;
            currentPage = pages[currentIndex];
          });
        },
        selectedItemColor: Colors.deepOrangeAccent,
      ),
      body: currentPage,
    );
    ;
  }
}
