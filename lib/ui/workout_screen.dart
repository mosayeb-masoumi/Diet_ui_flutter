
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:ui_flutter_diet/model/upper__body_workout.dart';

class WorkoutScreen extends StatelessWidget {
  const WorkoutScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final today = DateTime.now();
    return Scaffold(

      backgroundColor: Color(0xFF200087),

      body: SingleChildScrollView(
        child: Padding(padding: EdgeInsets.symmetric(horizontal: 16 , vertical: 16),
          child: Column(
            children: [

              Padding(

                padding: const EdgeInsets.only(top: 16.0),
                child: IconButton(
                    icon: Icon(Icons.close , color: Colors.white, size: 40,),
                    onPressed: (){
                      Navigator.of(context).pop();
                    },),
              ),

              SizedBox(height: 10,),
              ListTile(
                title: Text("${DateFormat("EEEE").format(today)} , ${DateFormat("d MMM").format(today)}"  , style: TextStyle(color: Colors.white),),
                subtitle: Text("Upper Body", style: TextStyle(color: Colors.white),),

                trailing: Column(
                  children: [
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                          Icon(Icons.access_time , color: Colors.white70,),
                        Text("60 mins", style: TextStyle(color: Colors.white70),),
                      ],
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(Icons.access_time , color: Colors.white70,),
                        Text("60 mins", style: TextStyle(color: Colors.white70),),
                      ],
                    )
                  ],
                )
              ),

              for(int i =0 ; i< upperBody.length ; i++)
               Column(
                 children: [
                   for(int j =0; j <upperBody[i].length ; j++)
                     ListTile(
                          leading: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(20)),
                              color: Color(0xFF5B4D9D),
                            ),
                            padding: EdgeInsets.all(6),
                            child: Image.asset(upperBody[i][j].imagePath , width: 40, height: 40, color: Colors.white70,),
                          ),
                       title: Text(upperBody[i][j].name , style: TextStyle(color: Colors.white70),),
                       subtitle: Text(upperBody[i][j].instruction , style: TextStyle(color: Colors.white70),),

                     ),

                   SizedBox(height: 30,)
                 ],

               ),


            ]
          ),

        ),
      ),
    );
  }
}
