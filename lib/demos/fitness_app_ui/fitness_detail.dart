import 'package:flutter/material.dart';
import 'package:ui_demos/demos/fitness_app_ui/models/category_model.dart';
import 'package:ui_demos/demos/fitness_app_ui/models/diet_model.dart';

class FitnessDetail extends StatelessWidget {
  FitnessDetail({super.key, this.dietModel, this.categoryModel});
  final DietModel? dietModel;
  final CategoryModel? categoryModel;

  @override
  Widget build(BuildContext context) {
    bool isDiet = dietModel != null;
    return Scaffold(
      appBar: AppBar(
        title: Text(isDiet ? dietModel!.name : categoryModel!.name),
      ),
      body: Center(
        child: Column(
          children: [
            Container(
              width: 600,
              height: 300,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
              ),
              child: Card(
                child: Image.asset(
                  isDiet ? dietModel!.iconPath : categoryModel!.iconPath,
                  width: 100,
                  height: 100,
                ),
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Text(
              'Detail',
              style: TextStyle(fontSize: 20, color: Colors.red, fontStyle: FontStyle.italic),
            ),
            SizedBox(
              height: 150,
            ),
            Text(isDiet ? dietModel!.calorie : categoryModel!.name)
          ],
        ),
      ),
    );
  }
}
