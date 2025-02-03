import 'food.dart';

class Restaurant {
  String name;
  String waitTime;
  String distance;
  String label;
  String logoUrl;
  String desc;
  num score;
  Map<String, List<Food>> menu;

  Restaurant(this.name, this.waitTime, this.distance, this.label, this.logoUrl, this.desc, this.score, this.menu);

  static Restaurant generateRestaurant() {
    return Restaurant(
      "McDonald's",
      "20-30 min",
      "2.5 km",
      "Fast Food",
      "assets/images/logo.png",
      "American fast food company",
      4.5,
      {
        "Recommended": Food.generateRecommendedFoods(),
        "Popular": Food.generatePopularFoods(),
        "Burgers": [],
        "Desserts": [],
      },
    );
  }
}