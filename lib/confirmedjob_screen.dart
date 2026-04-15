import 'package:flutter/material.dart';

class ConfirmedJobScreen extends StatelessWidget {
  const ConfirmedJobScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Confirmed Jobs",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.indigo,
        centerTitle: true,
        iconTheme: const IconThemeData(color: Colors.white),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView(
              padding: const EdgeInsets.all(16),
              children: [
                buildJobCard("Pran Brand", "Promote Pran juices on Instagram", "5000 Tk", "10K followers"),
                const SizedBox(height: 16),
                buildJobCard("Aarong", "Collaboration for clothing collection", "4000 Tk", "5K followers"),
                const SizedBox(height: 16),
                buildJobCard("RoopKotha Skincare", "Promote skincare products on TikTok", "6000 Tk", "15K followers"),
                const SizedBox(height: 16),
                buildJobCard("bKash Campaign", "Promote digital payment awareness", "7000 Tk", "20K followers"),
                const SizedBox(height: 16),
                buildJobCard("Daraz Bangladesh", "Eid mega sale promotion video", "8000 Tk", "25K followers"),
                const SizedBox(height: 16),
                buildJobCard("Pathao", "Ride-sharing promotional reels", "6500 Tk", "12K followers"),
                const SizedBox(height: 16),
                buildJobCard("Square Pharma", "Healthcare awareness campaign", "9000 Tk", "30K followers"),
              ],
            ),
          ),
          Container(
            width: double.infinity,
            color: Colors.indigo,
            padding: const EdgeInsets.all(16),
            child: const Center(
              child: Text(
                "Congratulations!",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget buildJobCard(String brand, String desc, String salary, String followers) {
    return Card(
      margin: EdgeInsets.zero,
      shape: RoundedRectangleBorder(
        side: const BorderSide(color: Colors.indigo, width: 2),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              brand,
              style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 6),
            Text(desc),
            const SizedBox(height: 6),
            Text("Salary: $salary"),
            Text("Followers: $followers"),
          ],
        ),
      ),
    );
  }
}