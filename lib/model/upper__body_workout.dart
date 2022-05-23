class UpperBodyWorkout {
  String imagePath = "";
  String name = "";
  String instruction = "";

  UpperBodyWorkout({
    required this.imagePath,
    required this.name,
    required this.instruction,
  });
}

final upperBody = [
  [
    UpperBodyWorkout(
        imagePath: "assets/images/chest.png",
        name: "Bench Press",
        instruction: "3 sets  - 6 repition"),
    UpperBodyWorkout(
        imagePath: "assets/images/chest.png",
        name: "Dumbell Press",
        instruction: "3 sets  - 6 repition"),
    UpperBodyWorkout(
        imagePath: "assets/images/chest.png",
        name: "Dips",
        instruction: "3 sets  - 6 repition"),
  ],
  [
    UpperBodyWorkout(
        imagePath: "assets/images/biceps.png",
        name: "Bench Press",
        instruction: "3 sets  - 6 repition"),
    UpperBodyWorkout(
        imagePath: "assets/images/biceps.png",
        name: "Dumbell Press",
        instruction: "3 sets  - 6 repition"),
    UpperBodyWorkout(
        imagePath: "assets/images/biceps.png",
        name: "Dips",
        instruction: "3 sets  - 6 repition"),
  ],

  [
    UpperBodyWorkout(
        imagePath: "assets/images/back.png",
        name: "Bench Press",
        instruction: "3 sets  - 6 repition"),
    UpperBodyWorkout(
        imagePath: "assets/images/back.png",
        name: "Dumbell Press",
        instruction: "3 sets  - 6 repition"),
    UpperBodyWorkout(
        imagePath: "assets/images/back.png",
        name: "Dips",
        instruction: "3 sets  - 6 repition"),
  ],

];
