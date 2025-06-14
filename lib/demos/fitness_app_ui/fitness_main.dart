import 'package:flutter/material.dart';
import 'package:ui_demos/demos/fitness_app_ui/models/category_model.dart';
import 'package:ui_demos/demos/fitness_app_ui/models/diet_model.dart';
import 'fitness_detail.dart'; // FitnessDetail sayfasını import et

class FitnessMain extends StatelessWidget {
  FitnessMain({super.key});

  List<CategoryModel> categories = [];
  List<DietModel> diet = [];

  void _getInitialInfo() {
    categories = CategoryModel.getCategories();
    diet = DietModel.getDiets();
  }

  @override
  Widget build(BuildContext context) {
    _getInitialInfo();
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: myAppBar(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _SearchField(),
          SizedBox(
            height: 40,
          ),
          _categoriesSection(),
          SizedBox(
            height: 40,
          ),
          _products()
        ],
      ),
    );
  }

  Column _products() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 20),
          child: Text(
            'Recommendation\nfor Diet',
            style: TextStyle(color: Colors.black, fontSize: 18, fontWeight: FontWeight.w600),
          ),
        ),
        SizedBox(
          height: 15,
        ),
        Container(
          height: 240,
          child: ListView.separated(
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {
                    // Yeni sayfaya yönlendirme
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => FitnessDetail(dietModel: diet[index]),
                      ),
                    );
                  },
                  child: Container(
                    width: 120,
                    decoration: BoxDecoration(
                      color: Colors.blueGrey.withOpacity(0.3),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Image.asset(diet[index].iconPath),
                        Text(
                          diet[index].name,
                          style: TextStyle(
                              fontWeight: FontWeight.w500, color: Colors.black, fontSize: 8),
                        ),
                        Text(
                          '${diet[index].level} | ${diet[index].duration} | ${diet[index].calorie}',
                          style: TextStyle(
                              color: Color(0xff7B6F72), fontSize: 8, fontWeight: FontWeight.w400),
                        ),
                        Container(
                          height: 45,
                          width: 80,
                          decoration: BoxDecoration(
                            gradient: LinearGradient(colors: [
                              Color(0xff9DCEFF),
                              Color(0xff92A3FD),
                            ]),
                            borderRadius: BorderRadius.circular(22.5),
                          ),
                          child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.transparent,
                                shadowColor: Colors.transparent,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(22.5),
                                ),
                              ),
                              onPressed: () {
                                // View butonuna tıklandığında yapılacak işlem
                                print('View butonu tıklandı: ${diet[index].name}');

                                ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(
                                    content: Text('${diet[index].name} detayları gösteriliyor...'),
                                    duration: Duration(seconds: 2),
                                  ),
                                );
                              },
                              child: Text(
                                'View',
                                style: TextStyle(
                                    color: Colors.white, fontWeight: FontWeight.w600, fontSize: 14),
                              )),
                        ),
                      ],
                    ),
                  ),
                );
              },
              scrollDirection: Axis.horizontal,
              separatorBuilder: (context, index) => SizedBox(
                    width: 25,
                  ),
              itemCount: diet.length),
        )
      ],
    );
  }

  Column _categoriesSection() {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.only(left: 20),
          child: Text(
            'Category',
            style: TextStyle(color: Colors.black, fontSize: 18, fontWeight: FontWeight.w600),
          ),
        ),
        SizedBox(
          height: 15,
        ),
        Container(
          height: 120,
          child: ListView.separated(
              itemCount: categories.length,
              scrollDirection: Axis.horizontal,
              padding: EdgeInsets.only(left: 20, right: 20),
              separatorBuilder: (context, index) => SizedBox(
                    width: 25,
                  ),
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {
                    // Yeni sayfaya yönlendirme
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => FitnessDetail(categoryModel: categories[index]),
                      ),
                    );
                  },
                  child: Container(
                    width: 100,
                    decoration: BoxDecoration(
                        color: categories[index].boxColor.withOpacity(0.3),
                        borderRadius: BorderRadius.circular(16)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          width: 50,
                          height: 50,
                          decoration: BoxDecoration(color: Colors.white, shape: BoxShape.circle),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Image.asset(categories[index].iconPath),
                          ),
                        ),
                        Text(
                          categories[index].name,
                          style: TextStyle(fontWeight: FontWeight.w400, color: Colors.black),
                        )
                      ],
                    ),
                  ),
                );
              }),
        )
      ],
    );
  }

  Container _SearchField() {
    return Container(
        margin: EdgeInsets.only(top: 40, left: 20, right: 20),
        decoration: BoxDecoration(boxShadow: [
          BoxShadow(color: Color(0xff1D1617).withOpacity(0.11), blurRadius: 40, spreadRadius: 0.0),
        ]),
        child: TextField(
          decoration: InputDecoration(
              hintText: "Search Pancake",
              prefixIcon: Icon(Icons.search),
              suffixIcon: Icon(Icons.settings),
              filled: true,
              fillColor: Colors.white,
              contentPadding: EdgeInsets.all(15),
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15), borderSide: BorderSide.none)),
        ));
  }

  AppBar myAppBar() {
    return AppBar(
      title: Text(
        'Breakfast',
        style: TextStyle(
          color: Colors.black,
          fontSize: 18,
          fontWeight: FontWeight.bold,
        ),
      ),
      centerTitle: true,
      backgroundColor: Colors.white,
      elevation: 0.0,
      leading: IconButton(onPressed: () {}, icon: Icon(Icons.arrow_back_rounded)),
      actions: [IconButton(onPressed: () {}, icon: Icon(Icons.more_horiz))],
    );
  }
}
