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
            backgroundImage: NetworkImage(
                'https://th.bing.com/th/id/OIP.UEn6pt4iRHK6eK9N610QtQAAAA?rs=1&pid=ImgDetMain'),
          ),
        ),
        title: const Text('Doctor sol'),
      ),
      body: _ChatView(),
    );
  }
}

class _ChatView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: [
            Expanded(child: ListView.builder(
              itemCount: 10,
              itemBuilder: (context, index) {
                return Text('index: $index');
              },
            )),
            const Text('Mundo')
          ],
        ),
      ),
    );
  }
}
