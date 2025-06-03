import 'package:flutter/material.dart';

class TripAppUi extends StatefulWidget {
  const TripAppUi({super.key});

  @override
  State<TripAppUi> createState() => _TripAppUiState();
}

class _TripAppUiState extends State<TripAppUi> {
  late PageController _pageController;
  @override
  void initState() {
    super.initState();
    _pageController = PageController(
      initialPage: 0,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        children: [
          makePage(_imagePaths.everestPath, _Titles.everestTitle, _Titles.everestSubtitle),
          makePage(_imagePaths.oceanPath, _Titles.oceanTitle, _Titles.oceanSubTitle),
          makePage(_imagePaths.bridgePath, _Titles.goldenGateTitle, _Titles.goldenGateSubTitle),
        ],
      ),
    );
  }
}

Widget makePage(String imagePath, String title, String subtitle) {
  return Container(
    decoration: BoxDecoration(
      image: DecorationImage(image: AssetImage(imagePath), fit: BoxFit.cover),
    ),
    child: Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(begin: Alignment.bottomRight, stops: [
          0.3,
          0.9
        ], colors: [
          Colors.black.withOpacity(.9),
          Colors.black.withOpacity(.2),
        ]),
      ),
      child: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 470,
            ),
            Text(title, style: _TextStyles.titleStyle),
            SizedBox(
              height: 50,
            ),
            Text(subtitle, style: _TextStyles.subTitleStyle),
          ],
        ),
      ),
    ),
  );
}

class _Titles {
  static const String everestTitle = "Everest";
  static const String everestSubtitle = "Nepalde yer alır dünyanın en yüksek noktasıdır";
  static const String oceanTitle = "Pasifik okyanusu";
  static const String oceanSubTitle =
      "Büyük Okyanus veya Pasifik Okyanusu, Amerika, Asya, Antarktika ve Okyanusya kıtaları arasında ve dünyanın en büyük okyanusu.";
  static const String goldenGateTitle = "Golden Gate Köprüsü";
  static const String goldenGateSubTitle =
      "Golden Gate Köprüsü Kaliforniya'daki San Francisco Körfezi'nin girişinde, Golden Gate Boğazı üzerinde bir asma köprüdür.";
}

class _TextStyles {
  static const TextStyle titleStyle =
      TextStyle(color: Colors.white, fontSize: 30, fontWeight: FontWeight.bold);
  static const TextStyle subTitleStyle = TextStyle(color: Colors.white54, fontSize: 20);
}

class _imagePaths {
  static const everestPath = "assets/images/five.jpg";
  static const oceanPath = "assets/images/six.jpg";
  static const bridgePath = "assets/images/seven.jpg";
}
