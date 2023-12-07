import 'package:aplicacion_mensaje_m/presentation/widgets/my_message_bubble.dart';
import 'package:flutter/material.dart';

class ChatSreen extends StatefulWidget {
  const ChatSreen({super.key});

  @override
  State<ChatSreen> createState() => ChatSreenState();
}

class ChatSreenState extends State<ChatSreen> {
  int clickColors = 0;

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
        actions: [
          _ButtonColor(
            onPressed: () {
              setState(() {
              });
            },
            color: const Color.fromARGB(246, 155, 163, 14),
          )
        ],
      ),
      body: _ChatView(),
    );
  }

  int colores() {
    return clickColors;
  }
}

class _ButtonColor extends StatelessWidget {
  final Color color;
  final VoidCallback onPressed;
  const _ButtonColor({required this.onPressed, required this.color});
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(4.0),
        child: IconButton(
            onPressed: onPressed,
            icon: Container(
                width: 36,
                height: 36,
                decoration: BoxDecoration(color: color, shape: BoxShape.circle),
                child: const Icon(null))));
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
            Expanded(
                child: ListView.builder(
              itemCount: 100,
              itemBuilder: (context, index) {
                return const MyMessageBubble();
              },
            )),
            const Text('Mundo')
          ],
        ),
      ),
    );
  }
}
