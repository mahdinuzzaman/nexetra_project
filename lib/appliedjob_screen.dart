import 'package:flutter/material.dart';

class AppliedJobScreen extends StatelessWidget {
  const AppliedJobScreen({super.key});

  @override
  Widget build(BuildContext context) {
    TextStyle normalText = const TextStyle(fontSize: 16);

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Applied Jobs",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.indigo,
        centerTitle: true,
        iconTheme: const IconThemeData(color: Colors.white),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          buildJobCard(
            "Pran",
            "Payment: 5000",
            "Followers: 1000",
            "Experience: Working with 3 brands at least",
          ),
          const SizedBox(height: 16),
          buildJobCard(
            "Aarong",
            "Payment: 10000",
            "Followers: 10000",
            "Experience: Working with 3 brands at least",
          ),
          const SizedBox(height: 16),
          buildJobCard(
            "TWELVE",
            "Payment: 8000",
            "Followers: 5000",
            "Experience: Worked with fashion brands",
          ),
          const SizedBox(height: 16),
          buildJobCard(
            "Le Reve",
            "Payment: 12000",
            "Followers: 15000",
            "Experience: Worked with premium brands",
          ),
        ],
      ),
    );
  }

  Widget buildJobCard(
      String brand,
      String payment,
      String followers,
      String experience,
      ) {
    return Card(
      margin: EdgeInsets.zero,
      shape: RoundedRectangleBorder(
        side: const BorderSide(color: Colors.indigo, width: 2),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              brand,
              style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 6),
            Text(payment),
            const SizedBox(height: 6),
            Text(followers),
            const SizedBox(height: 6),
            Text(experience),
          ],
        ),
      ),
    );
  }
}