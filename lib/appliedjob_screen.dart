import 'package:flutter/material.dart';

class AppliedJobScreen extends StatelessWidget {
  const AppliedJobScreen({super.key});

  @override
  Widget build(BuildContext context) {
    TextStyle normalText = TextStyle(fontSize: 20);

    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Applied Jobs",
          style: TextStyle(
            fontSize: 35,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        backgroundColor: Colors.indigo,
        centerTitle: true,
      ),

      body: ListView(
        padding: EdgeInsets.all(12),
        children: [


          Card(
            elevation: 5,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
            ),
            child: Container(
              width: double.infinity,
              padding: EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Pran",
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text("Payment: 5000", style: normalText),
                  Text("Requirement:", style: normalText),
                  Text("1. Followers: 1000", style: normalText),
                  Text(
                    "Experience: Working with 3 brands at least",
                    style: normalText,
                  ),
                ],
              ),
            ),
          ),

          SizedBox(height: 10),
          Card(
            elevation: 6,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            child: Container(
              width: double.infinity,
              padding: EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Aarong",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 30,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text("Payment: 10000", style: normalText),
                  Text("Requirements:", style: normalText),
                  Text("1. Followers: 10000", style: normalText),
                  Text(
                    "Experience: Working with 3 brands at least",
                    style: normalText,
                  ),
                ],
              ),
            ),
          ),

          SizedBox(height: 10),


          Card(
            elevation: 6,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            child: Container(
              width: double.infinity,
              padding: EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "TWELVE",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 30,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text("Payment: 8000", style: normalText),
                  Text("Requirements:", style: normalText),
                  Text("1. Followers: 5000", style: normalText),
                  Text(
                    "Experience: Worked with fashion brands",
                    style: normalText,
                  ),
                ],
              ),
            ),
          ),

          SizedBox(height: 10),

          Card(
            elevation: 6,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            child: Container(
              width: double.infinity,
              padding: EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Le Reve",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 30,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text("Payment: 12000", style: normalText),
                  Text("Requirements:", style: normalText),
                  Text("1. Followers: 15000", style: normalText),
                  Text(
                    "Experience: Worked with premium brands",
                    style: normalText,
                  ),
                ],
              ),
            ),
          ),

        ],
      ),
    );
  }
}