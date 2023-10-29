import 'package:first_app/pages/call_page.dart';
import 'package:first_app/pages/chat_page.dart';
import 'package:first_app/pages/communities_page.dart';
import 'package:first_app/pages/settings_page.dart';
import 'package:first_app/pages/status_page.dart';
import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black87,
      appBar: AppBar(
        backgroundColor: Colors.black87.withOpacity(0),
        title: Text(
          'Edit',
          style: TextStyle(
            fontSize: 25,
            color: Colors.blueAccent,
          ),
        ),
        centerTitle: false,
        elevation: 0,
        actions: [
          IconButton(
            onPressed: (){},
            icon: Icon(Icons.camera_alt_outlined, size: 30,),
          ),
          SizedBox(width: 15,),
          IconButton(
            onPressed: (){},
            icon: Icon(Icons.edit, size: 30,),
          ),
          SizedBox(width: 10,),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.data_usage_outlined, size: 30,), label: 'Status'),
            BottomNavigationBarItem(icon: Icon(Icons.phone_outlined, size: 30,), label: 'Calls'),
            BottomNavigationBarItem(icon: Icon(Icons.people_alt_outlined, size: 30,), label: 'Communities'),
            BottomNavigationBarItem(icon: Icon(Icons.question_answer_outlined, size: 30,), label: 'Chats'),
            BottomNavigationBarItem(icon: Icon(Icons.settings_outlined, size: 30,), label: 'Settings'),
          ],
          currentIndex: currentIndex,
          onTap: (index){
            setState(() {
              currentIndex = index;      
            });
          },
          type: BottomNavigationBarType.fixed,
        ),
      body: pages[currentIndex],
    );
  }

  final pages = [
    StatusPage(),
    CallPage(),
    CommunityPage(),
    ChatPage(),
    SettingPage(),
  ];
}