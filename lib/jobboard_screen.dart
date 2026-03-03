import 'package:flutter/material.dart';

class JobBoardScreen extends StatelessWidget {
  const JobBoardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Job Board"),
        backgroundColor: Colors.indigo,
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            buildJobCard(
              context,
              "Pran Brand",
              "Promote Pran juices on Instagram",
              "5000 Tk",
              "10 followers",
            ),
            const SizedBox(height: 16),
            buildJobCard(
              context,
              "Aarong",
              "Collaboration for clothing collection",
              "4000 Tk",
              "5 followers",
            ),
            const SizedBox(height: 16),
            buildJobCard(
              context,
              "RoopKotha Skincare",
              "Promote skincare products on TikTok",
              "6000 Tk",
              "15 followers",
            ),
          ],
        ),
      ),
    );
  }

  Widget buildJobCard(BuildContext context, String brand, String desc, String salary, String followers) {
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
            const SizedBox(height: 10),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text("Applied!")),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.indigo,
                ),
                child: const Text("Apply", style: TextStyle(color: Colors.white)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}