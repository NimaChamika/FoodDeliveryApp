import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fw2_fooddelivery/data/food_data.dart';
import 'package:fw2_fooddelivery/screen_manager.dart';
import 'package:fw2_fooddelivery/widgets/foodcard.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  int _chipIndex = 0;

  @override
  Widget build(BuildContext context) {

    Size _screenSize = MediaQuery.of(context).size;
    EdgeInsets _padding = MediaQuery.of(context).padding;

    ScreenManager.initScreenData(_screenSize, _padding);

    

    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          children: [
            //TOP BAR
            Container(
              height: ScreenManager.getWidgetHeight(120),
              padding: EdgeInsets.symmetric(horizontal: ScreenManager.getWidgetWidth(20)),
              //color: Colors.red,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  IconButton(
                    padding: EdgeInsets.zero,
                    icon: Icon(Icons.menu),
                    iconSize: ScreenManager.getWidgetHeight(80),
                    onPressed: (){},
                  ),
                ],
              ),
            ),
            //TOP TITLES
            Container(
              height: ScreenManager.getWidgetHeight(260),
              //color: Colors.blue,
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.symmetric(horizontal: ScreenManager.getWidgetWidth(20)),
              child: Text(
                'Simple Way to find \nTasty food',
                style: TextStyle(
                  fontSize: ScreenManager.getWidgetHeight(65),
                  color: Colors.black,
                  fontWeight: FontWeight.bold
                ),
                textScaleFactor: 1,
              ),
            ),
            //TOP SELECTION MENU
            Container(
              height: ScreenManager.getWidgetHeight(60),
              //color: Colors.red,
              alignment: Alignment.center,
              padding: EdgeInsets.symmetric(horizontal: ScreenManager.getWidgetWidth(20)),
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  _chipWidget('All',0),
                  _chipWidget('Italian',1),
                  _chipWidget('Asian',2),
                  _chipWidget('Chinese',3),
                  _chipWidget('Burger',4),
                  _chipWidget('Kottu',5),
                ],
              ),
            ),
            //SEARCH BAR
            Container(
              padding: EdgeInsets.symmetric(horizontal: ScreenManager.getWidgetWidth(20)),
              height: ScreenManager.getWidgetHeight(150),
              //color: Colors.red,
              alignment: Alignment.center,
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: ScreenManager.getWidgetWidth(20)),
                alignment: Alignment.center,
                height: ScreenManager.getWidgetHeight(110),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25.0),
                  border : Border.all(
                    color: Colors.black
                  )
                ),
                child: TextField(
                  autofocus: false,
                  style: TextStyle(
                    fontSize: ScreenManager.getWidgetHeight(50),
                    color: Colors.black,
                  ),
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    prefixIcon: Icon(
                      Icons.search_sharp,
                      size: ScreenManager.getWidgetHeight(60),
                      color: Colors.black87,
                    )
                  ),
                ),
               
              ),
            ),
            //FOOD CARDS
            Container(
              alignment: Alignment.center,
              height: ScreenManager.getWidgetHeight(720),
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: foodDataList.length,
                itemBuilder: (BuildContext context,int index){
                  FoodData fooData = foodDataList[index];

                  return FoodCard(
                    foodData: fooData,
                  );
                }
              )
            ),
            //FAB
            Container(
              height: ScreenManager.getWidgetHeight(210),
              padding: EdgeInsets.symmetric(horizontal: ScreenManager.getWidgetWidth(35)),
              //color: Colors.red,
              alignment: Alignment.centerRight,
              child: Container(
                width: ScreenManager.getWidgetWidth(120),
                height: ScreenManager.getWidgetWidth(120),
                decoration: BoxDecoration(
                  color: Colors.red,
                  shape:BoxShape.circle,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.pinkAccent.withOpacity(0.4),
                      spreadRadius: ScreenManager.getWidgetWidth(15),
                    ),
                  ]
                ),
                child: Icon(
                  Icons.add,
                  color: Colors.white,
                  size:ScreenManager.getWidgetWidth(60) ,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }


  Widget _chipWidget(String title,int index)
  {
    return Container(
      margin: EdgeInsets.only(right: ScreenManager.getWidgetWidth(20)),
      child: GestureDetector(
        onTap: (){
          setState(() {
            _chipIndex = index;
          });
        },
        child: Chip(
          label: Text(
            title,
            style: TextStyle(
              fontSize: ScreenManager.getWidgetHeight(40),
              color: _chipIndex == index ? Colors.redAccent : Colors.grey,
            ),
          ),
          labelPadding: EdgeInsets.symmetric(horizontal: ScreenManager.getWidgetWidth(20)),
          backgroundColor: Colors.white,
        ),
      ),
    );
  }
}
