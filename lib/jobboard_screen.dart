import 'package:flutter/material.dart';

class JobBoardScreen extends StatelessWidget {
  const JobBoardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Job Board",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.indigo,
        centerTitle: true,
        iconTheme: const IconThemeData(color: Colors.white),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          buildJobCard(context, "Pran Brand", "Promote Pran juices on Instagram", "5000 Tk", "10 followers", featured: true),
          const SizedBox(height: 16),
          buildJobCard(context, "Aarong", "Collaboration for clothing collection", "4000 Tk", "5 followers"),
          const SizedBox(height: 16),
          buildJobCard(context, "RoopKotha Skincare", "Promote skincare products on TikTok", "6000 Tk", "15 followers"),
          const SizedBox(height: 16),
          buildJobCard(context, "Bata", "Promote footwear collection", "7000 Tk", "8000 followers"),
          const SizedBox(height: 16),
          buildJobCard(context, "Puma", "Sportswear campaign", "9000 Tk", "12000 followers"),
          const SizedBox(height: 16),
          buildJobCard(context, "Zara", "Fashion arrivals", "11000 Tk", "15000 followers"),
        ],
      ),
    );
  }

  Widget buildJobCard(
      BuildContext context,
      String brand,
      String desc,
      String salary,
      String followers, {
        bool featured = false,
      }) {
    return Card(
      shape: RoundedRectangleBorder(
        side: const BorderSide(color: Colors.indigo, width: 2),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Text(
                  brand,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(width: 10),
                if (featured)
                  Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 8, vertical: 4),
                    decoration: BoxDecoration(
                      color: Colors.indigo,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: const Text(
                      "🔥 FEATURED",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
              ],
            ),
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
                child: const Text(
                  "Apply",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}