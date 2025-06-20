import 'package:flutter/material.dart';
import 'package:seek_home_app/chatPage/BuyingPage.dart';
import 'package:seek_home_app/chatPage/ChatCard.dart';
import 'package:seek_home_app/chatPage/CustomBottomNavBarClipper.dart';
import 'package:seek_home_app/chatPage/SellingPage.dart';
import 'package:seek_home_app/chatPage/unreadPage.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({super.key});

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  int selectedIndex = 0;
  List<int> chatItems = List.generate(5, (i) => i);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final double padding = size.width * 0.05;
    return Scaffold(
      bottomNavigationBar: Stack(
        clipBehavior: Clip.none,
        children: [
          ClipPath(
            clipper: CustomBottomNavBarClipper(),
            child: Container(
              height:
                  MediaQuery.of(context).size.height *
                  0.09, // responsive height
              color: Colors.blue.shade200,
              child: BottomNavigationBar(
                type: BottomNavigationBarType.fixed,
                backgroundColor: Colors.transparent,
                currentIndex: selectedIndex,
                selectedItemColor: Colors.red,
                unselectedItemColor: Colors.green,
                showSelectedLabels: false,
                showUnselectedLabels: false,
                elevation: 0,
                onTap: (value) {
                  setState(() {
                    selectedIndex = value;
                  });
                },
                items: [
                  BottomNavigationBarItem(
                    icon: Image.asset('assets/images/Home.png', height: 24),
                    label: '',
                  ),
                  BottomNavigationBarItem(
                    icon: Image.asset('assets/images/massage.png', height: 24),
                    label: '',
                  ),
                  BottomNavigationBarItem(icon: Icon(Icons.abc), label: ''),

                  BottomNavigationBarItem(
                    icon: Image.asset('assets/images/four.png', height: 24),
                    label: '',
                  ),
                  BottomNavigationBarItem(
                    icon: Image.asset('assets/images/call.png', height: 24),
                    label: '',
                  ),
                ],
              ),
            ),
          ),

          // Optional: Center lifted icon (comment out if not needed)
          Positioned(
            top: -30,
            left: 0,
            right: 0,
            child: Center(
              child: GestureDetector(
                onTap: () {
                  print("Center icon tapped");
                },
                child: Container(
                  padding: const EdgeInsets.all(10),
                  child: Image.asset(
                    'assets/images/Group.png',
                    height: 80,
                    width: 80,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),

      body: SafeArea(
        child: Column(
          children: [
            Container(
              color: Colors.blue.shade200,
              width: double.infinity,
              padding: EdgeInsets.all(padding),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Chats",
                    style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(height: 30),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Expanded(
                        child: GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (_) => ChatScreen()),
                            );
                          },
                          child: const Center(
                            child: Text(
                              "All Chats",
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(width: 50),
                      Expanded(
                        child: GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (_) => Sellingpage()),
                            );
                          },
                          child: const Center(
                            child: Text(
                              "Buying",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(width: 50),
                      Expanded(
                        child: GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (_) => Buyingpage()),
                            );
                          },
                          child: const Center(
                            child: Text(
                              "Selling",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),

                  const SizedBox(height: 5),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: padding, vertical: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue.shade200,
                      padding: const EdgeInsets.symmetric(
                        horizontal: 16,
                        vertical: 6,
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    child: const Text(
                      "All Chats",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Unreadpage()),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue.shade200,
                      padding: const EdgeInsets.symmetric(
                        horizontal: 16,
                        vertical: 6,
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    child: const Text(
                      "Unread",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: chatItems.length,
                padding: EdgeInsets.symmetric(horizontal: padding),
                itemBuilder: (context, index) {
                  return ChatCard(
                    onDelete: () {
                      setState(() {
                        chatItems.removeAt(index);
                      });
                    },
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
