import 'package:aplicacion_mensaje_m/config/theme/app_theme.dart';
import 'package:aplicacion_mensaje_m/domain/entities/message.dart';
import 'package:aplicacion_mensaje_m/presentation/providers/chat_provider.dart';
import 'package:aplicacion_mensaje_m/presentation/widgets/her_message_bubble.dart';
import 'package:aplicacion_mensaje_m/presentation/widgets/my_message_bubble.dart';
import 'package:aplicacion_mensaje_m/presentation/widgets/shared/message_field_box.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

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
    return IconButton(
        onPressed: onPressed,
        icon: Container(
            width: 36,
            height: 36,
            decoration: BoxDecoration(color: color, shape: BoxShape.circle),
            child: const Icon(null)));
  }
}

class _ChatView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final chatProvider = context.watch<ChatProvider>();

    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: [
            Expanded(
                child: ListView.builder(
              itemCount: chatProvider.messageList.length,
              itemBuilder: (context, index) {
                final message = chatProvider.messageList[index];

                return (message.froWho == FroWho.hers)
                    ? HerMessageBubble(message: chatProvider.messageList[index].text)
                    : MyMessageBubble(message: chatProvider.messageList[index].text,);
              },
            )),
            //Caja de texto de mensaje
            const MessageFieldBox(),
          ],
        ),
      ),
    );
  }
}
