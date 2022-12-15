import 'package:flutter/material.dart';

import 'pages/chats.dart';
import 'pages/home.dart';
import 'pages/notes.dart';
import 'pages/search.dart';

class HomeScreen extends StatefulWidget {
   HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  int selectedindex = 0;
  PageController pageController = PageController();

  void onTappeed(int index) {
    setState(() {
      selectedindex = index;
    });
    pageController.jumpToPage(index);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(controller:
          pageController,
      children: [
        HomePage(),
        SearchPage(),
        NotesPage(),
        ChatPge(),

      ]
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home),label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.person_search),label: "Search"),
          BottomNavigationBarItem(icon: Icon(Icons.edit_calendar_outlined),label: "Notes"),
          BottomNavigationBarItem(icon: Icon(Icons.chat_bubble_outline),label: "Chat"),

        ],
        currentIndex: selectedindex,
        selectedItemColor: Colors.pinkAccent,
        unselectedItemColor: Colors.black54,
        onTap: onTappeed,
      ),
    );
  }
}
