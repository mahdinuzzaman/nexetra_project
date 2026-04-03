import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:splash_screen/loginInfluencer.dart';
import 'loginInfluencer.dart';

class Role extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
  return Scaffold(
    body: Column(
      children: [
        SizedBox(height: 280,),
        Center(
          child: Text("Please select your role",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 40,


          ),
          ),
        ),
        SizedBox(height: 50,),

        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            ElevatedButton(onPressed: (){
              
              Navigator.push(context, MaterialPageRoute(builder: (context)=>loginInfluencer()));
            },
              style: ElevatedButton.styleFrom(
                minimumSize: Size(150, 60),
                backgroundColor: Colors.indigo
              ),
                child: Text("Influencer",
                  style:
                  TextStyle(
                    color: Colors.white,
                    fontSize: 40,
                    fontWeight: FontWeight.bold,

                  ),
                ),

            ),
            SizedBox(width: 50,),
            ElevatedButton(
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text("Login as brand is not available right now"),
                  ),
                );
              },
              style: ElevatedButton.styleFrom(
                minimumSize: Size(150, 60),
                backgroundColor: Colors.indigo,
              ),
              child: Text(
                "Brand",
                style: TextStyle(
                  fontSize: 40,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            )
          ],
        ),

      ],
    ),
    
    
  );
  }
  
  
}