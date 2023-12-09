import 'package:aplicacion_mensaje_m/config/theme/app_theme.dart';
import 'package:aplicacion_mensaje_m/presentation/widgets/my_message_bubble.dart';
import 'package:flutter/material.dart';

class ChatSreen extends StatefulWidget {
  final Function(ThemeData) changeTheme;
  const ChatSreen({super.key, required this.changeTheme});

  @override
  State<ChatSreen> createState() => _ChatSreenState();
}

class _ChatSreenState extends State<ChatSreen> {
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
              //changeTheme(lo que envia es el ThemeData...)
              widget.changeTheme(AppTheme(selectedColor: 0).theme());
            },
            color: const Color.fromARGB(246, 155, 163, 14),
          ),
          _ButtonColor(
              onPressed: () {
                widget.changeTheme(AppTheme(selectedColor: 1).theme());
              },
              color: const Color.fromARGB(246, 158, 24, 6)),
          _ButtonColor(
              onPressed: () {
                widget.changeTheme(AppTheme(selectedColor: 2).theme());
              },
              color: Color.fromARGB(246, 33, 153, 222))
        ],
      ),
      body: _ChatView(),
    );
  }
}

class _ButtonColor extends StatelessWidget {
  final Color color;
  final VoidCallback onPressed;
  const _ButtonColor({required this.onPressed, required this.color});
  @override
  Widget build(BuildContext context) {
    return  IconButton(
            onPressed: onPressed,
            icon: Container(
                width: 36,
                height: 36,
                decoration: BoxDecoration(color: color, shape: BoxShape.circle),
                child: const Icon(null)
                )
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
