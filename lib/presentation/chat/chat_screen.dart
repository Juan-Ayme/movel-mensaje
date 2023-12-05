import 'package:flutter/material.dart';

class ChatSreen extends StatelessWidget {
  const ChatSreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Padding(
          padding: EdgeInsets.all(5.0),
          child: CircleAvatar(
            backgroundImage: NetworkImage('https://th.bing.com/th/id/OIP.UEn6pt4iRHK6eK9N610QtQAAAA?rs=1&pid=ImgDetMain'),
          ),
        ),
        title: const Text('Doctor sol'),
      ),
    );
  }
}
