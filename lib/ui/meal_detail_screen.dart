
import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:ui_flutter_diet/model/meal.dart';

class MealDetailScreen extends StatelessWidget {

  final Meal meal;

   MealDetailScreen({Key? key , required this.meal }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final today = DateTime.now();

    return Scaffold(
      backgroundColor: Color(0xFFE9E9E9),
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            snap: true,
            floating: true,
            backgroundColor: Color(0xFF200087),
            expandedHeight: 300,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(40))
            ),
            flexibleSpace: FlexibleSpaceBar(
              background: ClipRRect(
                borderRadius: BorderRadius.vertical(bottom :Radius.circular(40)),
                  child: Image.asset(meal.imagePath , fit: BoxFit.cover,)),
            ),

          ),


          SliverList(delegate: SliverChildListDelegate(
            [
              SizedBox(height: 20,),
              ListTile(
                title: Text(meal.mealTime .toUpperCase() , style: TextStyle(color: Colors.blueGrey),),
                subtitle: Text(meal.name, style: TextStyle(color: Colors.blueGrey)),
                trailing: ClipOval(
                  child: Image.asset("assets/images/user.jpg"),),
              ),

              SizedBox(height: 20,),
              ListTile(
                title: Text(meal.mealTime .toUpperCase() , style: TextStyle(color: Colors.blueGrey),),
                subtitle: Text(meal.name, style: TextStyle(color: Colors.blueGrey)),
                trailing: ClipOval(
                  child: Image.asset("assets/images/user.jpg"),),
              ),

              SizedBox(height: 20,),
              ListTile(
                title: Text(meal.mealTime .toUpperCase() , style: TextStyle(color: Colors.blueGrey),),
                subtitle: Text(meal.name, style: TextStyle(color: Colors.blueGrey)),
                trailing: ClipOval(
                  child: Image.asset("assets/images/user.jpg"),),
              ),

              SizedBox(height: 20,),
              ListTile(
                title: Text(meal.mealTime .toUpperCase() , style: TextStyle(color: Colors.blueGrey),),
                subtitle: Text(meal.name, style: TextStyle(color: Colors.blueGrey)),
                trailing: ClipOval(
                  child: Image.asset("assets/images/user.jpg"),),
              ),
              SizedBox(height: 20,),
              ListTile(
                title: Text(meal.mealTime .toUpperCase() , style: TextStyle(color: Colors.blueGrey),),
                subtitle: Text(meal.name, style: TextStyle(color: Colors.blueGrey)),
                trailing: ClipOval(
                  child: Image.asset("assets/images/user.jpg"),),
              ),
              SizedBox(height: 20,),
              ListTile(
                title: Text(meal.mealTime .toUpperCase() , style: TextStyle(color: Colors.blueGrey),),
                subtitle: Text(meal.name, style: TextStyle(color: Colors.blueGrey)),
                trailing: ClipOval(
                  child: Image.asset("assets/images/user.jpg"),),
              ),

              SizedBox(height: 20,),
              ListTile(
                title: Text(meal.mealTime .toUpperCase() , style: TextStyle(color: Colors.blueGrey),),
                subtitle: Text(meal.name, style: TextStyle(color: Colors.blueGrey)),
                trailing: ClipOval(
                  child: Image.asset("assets/images/user.jpg"),),
              ),

              SizedBox(height: 20,),
              ListTile(
                title: Text(meal.mealTime .toUpperCase() , style: TextStyle(color: Colors.blueGrey),),
                subtitle: Text(meal.name, style: TextStyle(color: Colors.blueGrey)),
                trailing: ClipOval(
                  child: Image.asset("assets/images/user.jpg"),),
              ),
            ]
          ))

        ],
      ),
    );
  }
}
