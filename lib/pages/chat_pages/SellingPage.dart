import 'package:flutter/material.dart';

class SellingPage extends StatelessWidget {
  static const String pageName = "/sellingPage";
  const SellingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Selling Chats"),
        backgroundColor: Colors.blue.shade200,
        elevation: 0,
      ),
      body: Column(
        children: [
          const SizedBox(height: 10),

          // 🔍 Optional Search Bar
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: TextField(
              decoration: InputDecoration(
                hintText: "Search chats...",
                prefixIcon: const Icon(Icons.search),
                filled: true,
                fillColor: Colors.grey.shade200,
                contentPadding: const EdgeInsets.symmetric(vertical: 0),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                  borderSide: BorderSide.none,
                ),
              ),
            ),
          ),

          const SizedBox(height: 10),

          // 🔽 Chat List
          Expanded(
            child: ListView.builder(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              itemCount: 6, // dummy count
              itemBuilder: (context, index) {
                return const ChatTile();
              },
            ),
          ),
        ],
      ),
    );
  }
}

class ChatTile extends StatelessWidget {
  const ChatTile({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 8),
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.shade300,
            blurRadius: 6,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: Row(
        children: [
          const CircleAvatar(
            radius: 25,
            backgroundColor: Colors.blue,
            child: Icon(Icons.person, color: Colors.white),
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  "Buyer Name",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                ),
                SizedBox(height: 4),
                Text(
                  "Interested in your listed item...",
                  style: TextStyle(color: Colors.black54),
                ),
              ],
            ),
          ),
          const Text(
            "2:45 PM",
            style: TextStyle(color: Colors.grey, fontSize: 12),
          ),
        ],
      ),
    );
  }
}
