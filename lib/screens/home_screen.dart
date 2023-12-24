import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:dicoding/screens/first_tab.dart';
import 'package:dicoding/screens/second_tab.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  final items = const [
     Icon(Icons.home,color: Colors.white,),
     Icon(Icons.account_circle_outlined,color: Colors.white,),
  ];

   int index = 1;

  GlobalKey<CurvedNavigationBarState> _bottomNavigationKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       backgroundColor: Colors.blue.shade300,


      bottomNavigationBar: CurvedNavigationBar(
          key: _bottomNavigationKey,
          index: index,
          backgroundColor: Colors.transparent,
          color: Colors.grey.shade800,
          animationDuration: Duration(milliseconds: 300),
          
          
          items: items,
          
          onTap: (selctedIndex){
          setState(() {
            index = selctedIndex;
          });
        },
          letIndexChange: (index) => true,
        ),
       body: Container(
        color: Colors.blue,
        width: double.infinity,
        height: double.infinity,
        alignment: Alignment.center,
        child: getSelectedWidget(index: index)
      ),
    );
  }

  Widget getSelectedWidget({required int index}){
    Widget widget;
    switch(index){
      case 0:
        widget = FirstTab();
        break;
      default:
        widget = SecondTab();
        break;
    }
    return widget;
  }
}
      

