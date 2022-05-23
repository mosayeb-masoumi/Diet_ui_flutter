import 'package:animations/animations.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ui_flutter_diet/model/meal.dart';
import 'package:ui_flutter_diet/ui/meal_detail_screen.dart';
import 'package:ui_flutter_diet/ui/workout_screen.dart';
import 'package:vector_math/vector_math_64.dart' as math;
import 'package:intl/intl.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  // time 01:20

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery
        .of(context)
        .size
        .height;
    final today = DateTime.now();

    return Scaffold(
      backgroundColor: const Color(0xFFE9E9E9),
      bottomNavigationBar: buildBottomNavigation(),
      body: Stack(
        children: [
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            height: height * .3,
            child: ClipRRect(
              borderRadius: const BorderRadius.vertical(
                  bottom: const Radius.circular(40)),
              child: Container(
                color: Colors.white,
                padding: EdgeInsets.only(top: 20, right: 10, left: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ListTile(
                      title: Text(
                          "${DateFormat("EEEE").format(today)} , ${DateFormat(
                              "d MMM").format(today)}"),
                      subtitle: Text("HELLO MOSAYEB"),
                      trailing: ClipOval(
                        child: Image.asset("assets/images/user.jpg"),),
                    ),

                    Row(
                      children: [
                        _RadialProgress(height: height * 0.15,
                          width: height * 0.15,
                          progress: 0.7,),

                        SizedBox(width: 10,),

                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            _IngredientProgress(ingredients: "Protein",
                              leftAmount: 72,
                              progress: 0.3,
                              progressColor: Colors.green,),
                            _IngredientProgress(ingredients: "Crabs",
                              leftAmount: 252,
                              progress: 0.2,
                              progressColor: Colors.red,),
                            _IngredientProgress(ingredients: "Fat",
                              leftAmount: 125,
                              progress: 0.1,
                              progressColor: Colors.yellow,),
                          ],
                        )

                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
          Positioned(
              top: height * .33,
              left: 0,
              right: 0,
              child: Container(
                height: height * 0.5,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(bottom: 8, left: 30),
                      child: Text(
                        "MEALS FOR TODAY",
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                            color: Colors.blueGrey),
                      ),
                    ),
                    Expanded(
                        child: SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: [
                              const SizedBox(width: 32,),
                              for (int i = 0; i < meals.length; i++)
                                _MealCard(meal: meals[i])
                            ],
                          ),
                        )),


                    OpenContainer(
                      closedColor: Color(0xFFE9E9E9),
                      closedElevation: 0,
                      transitionType: ContainerTransitionType.fade,
                      transitionDuration: Duration(milliseconds: 1200),
                      openBuilder: (context, _) {
                        return WorkoutScreen();
                      },

                      closedBuilder: (context, VoidCallback openContainer) {
                        return GestureDetector(
                          onTap: openContainer,
                          child: Expanded(
                              child: Container(
                                width: MediaQuery
                                    .of(context)
                                    .size
                                    .width,
                                margin: EdgeInsets.only(
                                    left: 32, right: 32, bottom: 10),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.all(
                                        Radius.circular(40)),
                                    gradient: LinearGradient(
                                        begin: Alignment.topCenter,
                                        end: Alignment.bottomCenter,
                                        colors: [
                                          const Color(0xFF20008C),
                                          const Color(0xFF200087)
                                        ])
                                ),

                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 16.0, top: 16),
                                      child: Text("YOUR NEXT WORKOUT",
                                        style: TextStyle(color: Colors.white),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 16.0),
                                      child: Text("UPPER BODY",
                                        style: TextStyle(color: Colors.white),),
                                    ),

                                    SizedBox(height: 10,),

                                    SingleChildScrollView(
                                      scrollDirection: Axis.horizontal,
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment
                                            .center,
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                left: 32),
                                            child: Container(

                                              padding: EdgeInsets.all(10),
                                              decoration: BoxDecoration(
                                                  borderRadius: BorderRadius
                                                      .all(
                                                    Radius.circular(10),),
                                                  color: const Color(0xFF5B4D9D)
                                              ),
                                              child: Image.asset(
                                                "assets/images/chest.png",
                                                width: 50,
                                                height: 50,
                                                color: Colors.white,),
                                            ),
                                          ),
                                          SizedBox(width: 10,),
                                          Container(
                                            padding: EdgeInsets.all(10),
                                            decoration: BoxDecoration(
                                                borderRadius: BorderRadius.all(
                                                  Radius.circular(10),),
                                                color: const Color(0xFF5B4D9D)
                                            ),
                                            child: Image.asset(
                                              "assets/images/back.png",
                                              width: 50,
                                              height: 50,
                                              color: Colors.white,),
                                          ),
                                          SizedBox(width: 10,),
                                          Container(
                                            padding: EdgeInsets.all(10),
                                            decoration: BoxDecoration(
                                                borderRadius: BorderRadius.all(
                                                  Radius.circular(10),),
                                                color: const Color(0xFF5B4D9D)
                                            ),
                                            child: Image.asset(
                                              "assets/images/biceps.png",
                                              width: 50,
                                              height: 50,
                                              color: Colors.white,),
                                          ),
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              )

                          ),
                        );
                      },

                    ),


                  ],
                ),
              ))
        ],
      ),
    );
  }

  ClipRRect buildBottomNavigation() {
    return ClipRRect(
      borderRadius: BorderRadius.vertical(top: Radius.circular(40)),
      child: BottomNavigationBar(
        iconSize: 30,
        selectedIconTheme: IconThemeData(color: const Color(0xFF2200087)),
        unselectedIconTheme: IconThemeData(color: Colors.black12),
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: ('Home')),
          BottomNavigationBarItem(icon: Icon(Icons.mail), label: ('Search')),
          BottomNavigationBarItem(
              icon: Icon(Icons.account_circle), label: ('Profile')),
        ],
      ),
    );
  }
}


class _MealCard extends StatelessWidget {
  final Meal meal;

  const _MealCard({Key? key, required this.meal}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 20, bottom: 10),

        child: Material(
          borderRadius: BorderRadius.all(Radius.circular(20)),
          elevation: 4,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [



              OpenContainer(

                closedShape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(20)),),
                transitionDuration: Duration(milliseconds: 500),
                openBuilder: (context,_){
                  return MealDetailScreen(meal: meal);
                },
                closedBuilder: (context , openContainer){

                  return GestureDetector(
                    onTap: openContainer,
                    child: Expanded(
                      flex: 1,
                      child: ClipRRect(child: Image.asset(
                        meal.imagePath, width: 150, fit: BoxFit.cover,),
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                      ),
                    ),
                  );
                },
                // child: Expanded(
                //   flex: 1,
                //   child: ClipRRect(child: Image.asset(
                //     meal.imagePath, width: 150, fit: BoxFit.cover,),
                //     borderRadius: BorderRadius.all(Radius.circular(20)),
                //   ),
                // ),
              ),


              Expanded(
                  flex: 1,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const SizedBox(height: 10,),
                          Text(meal.mealTime, style: const TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 14,
                            color: Colors.blueGrey,),),
                          Text(meal.name, style: const TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: 17,
                            color: Colors.black,),),
                          Text("${meal.kiloColoriesBurnt} kcal",
                            style: const TextStyle(fontWeight: FontWeight.w500,
                              fontSize: 14,
                              color: Colors.blueGrey,),),
                          Row(
                            children: [
                              const Icon(Icons.access_time, color: Colors.black12,
                                size: 20,),
                              const SizedBox(width: 4,),
                              Text("${meal.timeTaken} min",
                                style: const TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 14,
                                  color: Colors.blueGrey,),),
                            ],
                          ),
                          const SizedBox(height: 10,),
                        ],
                      ),
                    ),
                  )),
            ],
          ),
        ),

    );
  }
}

class _RadialProgress extends StatelessWidget {
  final double height, width, progress;

  const _RadialProgress(
      {Key? key, required this.height, required this.width, required this.progress})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      painter: _RadialPainter(progress: progress),
      child: Container(
        height: height,
        width: width,
        child: Center(
          child: RichText(
              textAlign: TextAlign.center,
              text: TextSpan(
                  children: [
                    TextSpan(text: "1569",
                        style: TextStyle(color: Colors.black,
                            fontSize: 18,
                            fontWeight: FontWeight.bold)),
                    TextSpan(text: "\n"),
                    TextSpan(text: "kcal left",
                      style: TextStyle(color: Colors.black),),
                  ]
              )
          ),
        ),
      ),
    );
  }
}

class _RadialPainter extends CustomPainter {
  final double progress;

  _RadialPainter({required this.progress});

  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()
      ..strokeWidth = 7
      ..color = Color(0xFF200087)
      ..style = PaintingStyle.stroke
      ..strokeCap = StrokeCap.round;

    Offset center = Offset(size.width / 2, size.height / 2);
    double relativeProgress = 360 * progress;
    // canvas.drawCircle(center, size.width/2, paint);
    canvas.drawArc(Rect.fromCircle(center: center, radius: size.width / 2),
        math.radians(-90), math.radians(-relativeProgress), false, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }

}

class _IngredientProgress extends StatelessWidget {
  final String ingredients;
  final int leftAmount;
  final double progress;
  final Color progressColor;

  _IngredientProgress(
      {Key? key, required this.ingredients, required this.leftAmount, required this.progress, required this.progressColor});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [

        Text(ingredients.toUpperCase()),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [

            Stack(
              children: [
                Container(
                  height: 10,
                  width: 150,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(5)),
                      color: Colors.grey
                  ),
                ),

                Container(
                  height: 10,
                  width: MediaQuery
                      .of(context)
                      .size
                      .width * progress,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(5)),
                      color: progressColor
                  ),
                ),
              ],

            ),

            SizedBox(width: 10,),
            Text("${leftAmount}"),
          ],
        )
      ],
    );
  }
}

