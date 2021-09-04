import 'package:flutter/material.dart';
import 'package:fw2_fooddelivery/data/food_data.dart';
import 'package:fw2_fooddelivery/screen_manager.dart';
import 'package:fw2_fooddelivery/screens/fooddata_screen.dart';

class FoodCard extends StatefulWidget {

  final FoodData foodData;

  FoodCard({this.foodData});


  @override
  _FoodCardState createState() => _FoodCardState();
}

class _FoodCardState extends State<FoodCard> {
  @override
  Widget build(BuildContext context) {

    return GestureDetector(
      onTap: ()=>
        Navigator.push(context, MaterialPageRoute(
          builder: (_)=> FoodDataScreen(
            foodData: widget.foodData,
          ),
        ),
      ),
      child: Container(
        alignment: Alignment.center,
        //margin: EdgeInsets.only(left: 25.0,right:10,top: 10.0),
        padding : EdgeInsets.only(left: ScreenManager.getWidgetWidth(80)),
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            Container(
              width: ScreenManager.getWidgetWidth(450),
              height: ScreenManager.getWidgetHeight(630),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15.0),
                color: Colors.pink.withOpacity(0.2),
              ),
            ),
            Positioned(
              left: -ScreenManager.getWidgetWidth(60),
              top: -ScreenManager.getWidgetHeight(40),
              child: Container(
                width: ScreenManager.getWidgetWidth(280),
                height: ScreenManager.getWidgetWidth(280),
                decoration: BoxDecoration(
                  shape:BoxShape.circle,
                  image: DecorationImage(
                      image: AssetImage(
                        widget.foodData.imageUrl,
                      ),
                      fit:BoxFit.cover
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.pinkAccent.withOpacity(0.4),
                      offset: Offset(5.0,7.0),
                      blurRadius: 3.0,
                    ),

                  ]
                ),
              ),
            ),
            Positioned(
              right: ScreenManager.getWidgetWidth(60),
              top: ScreenManager.getWidgetHeight(130),
              child: Text(
                '\$${widget.foodData.price}',
                style: TextStyle(
                    fontSize: ScreenManager.getWidgetHeight(60),
                    fontWeight: FontWeight.bold,
                    color: Colors.redAccent
                ),
              )
            ),
            Positioned(
              top: ScreenManager.getWidgetHeight(320),
              left: ScreenManager.getWidgetWidth(40),
              child: Text(
                widget.foodData.foodNameBig,
                style: TextStyle(
                    fontSize: ScreenManager.getWidgetHeight(60),
                    color: Colors.black,
                    fontWeight: FontWeight.bold
                ),
              ),
            ),
            Positioned(
              top: ScreenManager.getWidgetHeight(400),
              left: ScreenManager.getWidgetWidth(40),
              child: Text(
                widget.foodData.foodNameSmall,
                style: TextStyle(
                  fontSize: ScreenManager.getWidgetHeight(30),
                  color: Colors.grey,
                ),
              ),
            ),
            Positioned(
              top: ScreenManager.getWidgetHeight(530),
              left: ScreenManager.getWidgetWidth(40),
              child: Text(
                '${widget.foodData.cal}Kcal',
                style: TextStyle(
                  fontSize: ScreenManager.getWidgetHeight(30),
                  color: Colors.black87,

                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
