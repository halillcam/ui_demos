import 'package:flutter/material.dart';

class FoodDelivery extends StatefulWidget {
  const FoodDelivery({super.key});

  @override
  State<FoodDelivery> createState() => _FoodDeliveryState();
}

class _FoodDeliveryState extends State<FoodDelivery> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        children: [
          _pageFoods("assets/images/food1.jpg"),
          _pageFoods("assets/images/food2.jpg"),
          _pageFoods("assets/images/food3.jpg"),
          _pageFoods("assets/images/food4.jpg")
        ],
      ),
    );
  }
}

Widget _pageFoods(String imagePath) {
  return Container(
    decoration: BoxDecoration(
      image: DecorationImage(
          image: AssetImage(
            imagePath,
          ),
          fit: BoxFit.cover),
    ),
    child: Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(begin: Alignment.bottomCenter, colors: [
          Colors.black.withOpacity(.9),
          Colors.black.withOpacity(.8),
          Colors.black.withOpacity(.2),
        ]),
      ),
      child: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text(
              'Taking order for Delivery',
              style: TextStyle(color: Colors.white, fontSize: 50, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              "See Restaurant nearby by\nadding location",
              style: TextStyle(color: Colors.white54, fontSize: 30),
            ),
            SizedBox(
              height: 30,
            ),
            _foodButton(),
            SizedBox(
              height: 30,
            ),
            Align(
              child: Text(
                'Now delivery to your door 24/7',
                style: TextStyle(color: Colors.white70),
              ),
            ),
            SizedBox(
              height: 15,
            )
          ],
        ),
      ),
    ),
  );
}

Container _foodButton() {
  return Container(
    decoration: BoxDecoration(
      gradient: LinearGradient(colors: [Colors.yellow, Colors.orange]),
      borderRadius: BorderRadius.circular(20),
    ),
    child: MaterialButton(
      onPressed: () {
        print('eklendi');
      },
      minWidth: double.infinity,
      child: Text(
        'Add order',
        style: TextStyle(color: Colors.white),
      ),
    ),
  );
}

// custom alert dialog
