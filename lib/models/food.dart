// ignore_for_file: public_member_api_docs, sort_constructors_first
class Food {
  String name;
  String imgUrl;
  String description;
  String waitTime;
  String cal;
  num score;
  num price;
  num quantity;
  List<Map<String, String>> ingredients;
  String about;
  bool highlight;

  Food(
    this.name,
    this.imgUrl,
    this.description,
    this.waitTime,
    this.cal,
    this.score,
    this.price,
    this.quantity,
    this.ingredients,
    this.about,
    {this.highlight = false}
  );

  static List<Food> generateRecommendedFoods() {
    return [
      Food(
        "BBQ",
        "assets/images/bbq/roast.jpg",
        "Delicious BBQ",
        "20-30 min",
        "600 cal",
        4.8,
        12.99,
        1,
        [
          {"Meat": "assets/images/bbq/roast.jpg"},
          {"Sauce": "assets/images/noodles/02.jpg"},
        ],
        "Tasty BBQ with special sauce",
        highlight: true,
      ),
      Food(
        "Burger",
        "assets/images/burgers/01.jpg",
        "Juicy Burger",
        "15-20 min",
        "700 cal",
        4.7,
        8.99,
        1,
        [
          {"Bun": "assets/images/burgers/01.jpg"},
          {"Patty": "assets/images/burgers/02.jpg"},
        ],
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam mi magna, tincidunt eget molestie id, pulvinar sed felis. Nunc bibendum, ligula et sagittis varius, est velit consequat magna, non iaculis velit lectus sed tortor. Suspendisse nec lacus nec elit efficitur consectetur. Nunc mattis, ex vitae placerat congue, elit ante lacinia ex, vel commodo nunc dui et massa.",
        highlight: true,
      ),
      Food(
        "Chicken",
        "assets/images/chicken/01.jpg",
        "Crispy Chicken",
        "25-35 min",
        "550 cal",
        4.9,
        9.99,
        1,
        [
          {"Chicken": "assets/images/chicken/01.jpg"},
          {"Spices": "assets/images/chicken/03.jpg"},
        ],
        "Crispy chicken with a blend of spices",
        highlight: true,
      ),
    ];
  }

  static List<Food> generatePopularFoods(){
    return[
    Food(
        "Chicken",
        "assets/images/chicken/04.jpg",
        "Crispy Chicken",
        "25-35 min",
        "550 cal",
        4.9,
        9.99,
        1,
        [
          {"Chicken": "assets/images/chicken/04.jpg"},
          {"Spices": "assets/images/chicken/02.jpg"},
        ],
        "Crispy chicken with a blend of spices",
        highlight: true,
      ),
       Food(
        "Burger",
        "assets/images/burgers/02.jpg",
        "Juicy Burger",
        "15-20 min",
        "700 cal",
        4.7,
        8.99,
        1,
        [
          {"Bun": "assets/images/burgers/04.jpg"},
          {"Patty": "assets/images/burgers/06.jpg"},
        ],
        "Juicy burger with fresh ingredients",
        highlight: true,
       )
    ];
  }
}
