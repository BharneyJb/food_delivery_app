import 'package:flutter/material.dart';
import 'package:food_delivery_app/constants/colors.dart';
import 'package:food_delivery_app/models/food.dart';
import 'package:food_delivery_app/models/restaurant.dart';

class FoodList extends StatelessWidget {
final int selected;
final Function callback;
final Restaurant restaurant;
FoodList(this.selected, this.callback, this.restaurant);
  @override
  Widget build(BuildContext context){
    final category = restaurant.menu.keys.toList();
    return Container(
      height: 100,
      padding: EdgeInsets.symmetric(vertical: 30),
      child: ListView.separated(
        padding: EdgeInsets.symmetric(horizontal: 25),
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => GestureDetector(
          onTap: () => callback(index),
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: selected == index ? kPrimary : Colors.white,
        ), 
        child: Text(
          category[index],
          style: TextStyle(
            color: selected == index ? Colors.white : kPrimary,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        ),
        ),
        separatorBuilder: (_, index) => SizedBox(width: 20,), 
        itemCount: category.length,
      ),
    );
  }
}