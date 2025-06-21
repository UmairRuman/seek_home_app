import 'package:flutter/material.dart';

class UnreadPage extends StatelessWidget {
  static const pageName = "/unreadPage";
  const UnreadPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Unread Chats"),
        backgroundColor: Colors.blue.shade200,
        elevation: 0,
      ),
      body: Column(
        children: [
          const SizedBox(height: 10),

          // Optional Search Bar
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: TextField(
              decoration: InputDecoration(
                hintText: "Search unread chats...",
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

          // Unread Chat List
          Expanded(
            child: ListView.builder(
              itemCount: 4, // dummy count for unread chats
              padding: const EdgeInsets.symmetric(horizontal: 16),
              itemBuilder: (context, index) {
                return const UnreadChatTile();
              },
            ),
          ),
        ],
      ),
    );
  }
}

class UnreadChatTile extends StatelessWidget {
  const UnreadChatTile({super.key});

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
            backgroundColor: Colors.orange,
            child: Icon(Icons.mark_email_unread, color: Colors.white),
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  "Unread User",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                ),
                SizedBox(height: 4),
                Text(
                  "You have unread messages...",
                  style: TextStyle(color: Colors.black54),
                ),
              ],
            ),
          ),
          const Icon(Icons.mark_chat_unread, color: Colors.red),
        ],
      ),
    );
  }
}
