import 'package:flutter/material.dart';

class ConfirmedJobScreen extends StatelessWidget {
  const ConfirmedJobScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Confirmed Jobs"),
        backgroundColor: Colors.indigo,
        centerTitle: true,
      ),
      body: Column(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  buildJobCard("Pran Brand", "Promote Pran juices on Instagram", "5000 Tk", "10 followers"),
                  const SizedBox(height: 16),
                  buildJobCard("Aarong", "Collaboration for clothing collection", "4000 Tk", "5 followers"),
                  const SizedBox(height: 16),
                  buildJobCard("RoopKotha Skincare", "Promote skincare products on TikTok", "6000 Tk", "15 followers"),
                ],
              ),
            ),
          ),
          Container(
            width: double.infinity,
            color: Colors.indigo,
            padding: const EdgeInsets.all(16),
            child: const Center(
              child: Text(
                "Congratulations!",
                style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget buildJobCard(String brand, String desc, String salary, String followers) {
    return Card(
      shape: RoundedRectangleBorder(
        side: const BorderSide(color: Colors.indigo),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(brand, style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
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