class DietModel {
  String name;
  String iconPath;
  String level;
  String duration;
  String calorie;
  bool viewIsSelected;

  DietModel(
      {required this.name,
      required this.iconPath,
      required this.level,
      required this.duration,
      required this.calorie,
      required this.viewIsSelected});

  static List<DietModel> getDiets() {
    List<DietModel> diets = [];

    diets.add(DietModel(
        name: "Honey Pancake",
        iconPath: "assets/images/cake.jpg",
        level: "Easy",
        duration: "30 mins",
        calorie: "180kCal",
        viewIsSelected: true));

    diets.add(DietModel(
        name: "Salad",
        iconPath: "assets/images/salad.jpg",
        level: "Easy",
        duration: "30 mins",
        calorie: "200kCal",
        viewIsSelected: true));

    diets.add(DietModel(
        name: "pie",
        iconPath: "assets/images/pie.png",
        level: "Easy",
        duration: "30 mins",
        calorie: "120kCal",
        viewIsSelected: true));
    return diets;
  }
}
