class Meal {
  String mealTime = "";
  String name = "";
  String imagePath = "";
  String kiloColoriesBurnt = "";
  String timeTaken = "";

  Meal(
      {required this.mealTime,
      required this.name,
      required this.imagePath,
      required this.kiloColoriesBurnt,
      required this.timeTaken});
}

final meals = [

  Meal(mealTime: "BREAKFAST", name: "Fruit", imagePath: "assets/images/fruit_granola.jpg", kiloColoriesBurnt: "210", timeTaken: "10"),
  Meal(mealTime: "DINNER", name: "Pesto Pasta", imagePath: "assets/images/pesto_pasta.jpg", kiloColoriesBurnt: "216", timeTaken: "15"),
  Meal(mealTime: "SNACK", name: "Keto Snack", imagePath: "assets/images/keto_snack.jpg", kiloColoriesBurnt: "220", timeTaken: "17"),
];
