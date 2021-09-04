import 'package:flutter/material.dart';
import 'package:fw2_fooddelivery/data/food_data.dart';

class FoodDataScreen extends StatelessWidget {

  final FoodData foodData;

  FoodDataScreen({
    this.foodData
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      foodData.foodNameBig,
      style: TextStyle(
        fontSize: 45.0,
        fontWeight: FontWeight.bold,
        color: Colors.white
      ),
    );
  }
}
