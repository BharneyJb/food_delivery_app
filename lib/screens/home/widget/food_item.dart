import 'package:flutter/material.dart';
import 'package:food_delivery_app/constants/colors.dart';

import '../../../models/food.dart';

class FoodItem extends StatelessWidget {
  final Food food;
  FoodItem(this.food);
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 110,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Row(
          children: [
            Container(
              height: 110,
              width: 110,
              padding: EdgeInsets.all(5),
              child: Image.asset(
                food.imgUrl,
                fit: BoxFit.cover,
              ),
            ),
            Expanded(
              child: Container(
                padding: EdgeInsets.only(left: 10, right: 10, top: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          food.name,
                          style: TextStyle(
                            fontSize: 16,
                            height: 1.5,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Icon(Icons.arrow_forward_ios_outlined, size: 15)
                      ]
                        
                    ),
                    SizedBox(height: 5,),
                    Text(
                      food.description,
                      style: TextStyle(
                        fontSize: 12,
                        color: food.highlight? kPrimary : Colors.grey.withOpacity(0.8),
                        height: 1.5,
                      ),
                    ),
                    SizedBox(height: 5,),
                    Row(
                      children: [
                        Text(
                          '\$',
                          style: TextStyle(
                            fontSize: 10,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(width: 5,),
                        Text(
                          '${food.price}',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                           
                          ),
                        ),
                      ],
                    ),
                  ],
            )

            )
            )
          ],
        ));
  }
}
