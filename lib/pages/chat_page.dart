import 'package:first_app/components/chat_item.dart';
import 'package:first_app/components/top_side.dart';
import 'package:flutter/material.dart';

class ChatPage extends StatelessWidget {
  // const ChatPage({super.key});

  final List _contactName = [
    'Ubani Austin',
    'Leonardo Ndunche',
    'Olatona Moyinoluwa',
    'Ubani Austin',
    'Leonardo Ndunche',
    'Olatona Moyinoluwa',
    'Ubani Austin',
    'Leonardo Ndunche',
    'Olatona Moyinoluwa',
    'Ubani Austin',
    'Leonardo Ndunche',
    'Olatona Moyinoluwa'
  ];
  final List _chat = [
    'How far?',
    'Who you wan dey whine?',
    'I dey okay',
    'How far?',
    'Who you wan dey whine?',
    'I dey okay',
    'How far?',
    'Who you wan dey whine?',
    'I dey okay',
    'How far?',
    'Who you wan dey whine?',
    'I dey okay'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          TopSide(),
          Expanded(
            child: ListView.builder(
              itemCount: _contactName.length,
              itemBuilder: (context, index) {
                  return ChatItem(name: _contactName[index], message: _chat[index],);
              }
            ),
          ),
        ],
      ),
    );
  }
}