import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:splash_screen/home_screen.dart';

class Createaccount extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
  return Scaffold(
    appBar: AppBar(
      backgroundColor: Colors.indigo,
      title: Center(
        child: Text("Nexetra",
        style: TextStyle(
          fontSize: 40,
          fontWeight: FontWeight.bold,
          color: Colors.white
        ),
        ),
      ),
    ),

    body: Column(

      children: [
        SizedBox(height: 280,),
        Text("Create Account",
        style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 35,

        ),
        ),
        SizedBox(height: 30,),

        Container(
          child: Column(
            children: [
              TextField(
                decoration: InputDecoration(
                  labelText: "First Name",
                  prefixIcon: Icon(Icons.person),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.black,
                      width: 2,
                    )
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.black38,
                    )
                  )
                ),
              ),
              SizedBox(height: 20,),
              TextField(
                decoration: InputDecoration(
                  labelText: "Last Name",
                  prefixIcon: Icon(Icons.person),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.black,
                      width: 2,
                    )
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.black38,
                      width: 2,
                    )
                  )
                ),
              ),
              SizedBox(height: 20,),

              TextField(
                decoration: InputDecoration(
                  labelText: "Password",
                  prefixIcon: Icon(Icons.password),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.black,
                      width: 2,
                    )
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.black38,
                      width: 2,
                    )
                  )
                ),
              ),

              SizedBox(height: 20,),

              ElevatedButton(onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=>HomeScreen()));
              },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white54
                ),
                  child: Text("Create Account",
                      style: TextStyle(
                        fontSize: 30,
                        color: Colors.black,
                      ),
                  ),
              ),
            ],
          ),





        ),
      ],
    ),




  );
  }
}