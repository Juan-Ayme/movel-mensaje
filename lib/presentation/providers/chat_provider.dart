import 'package:aplicacion_mensaje_m/domain/entities/message.dart';
import 'package:flutter/material.dart';

class ChatProvider extends ChangeNotifier {
  List<Message> message = [
    Message(text: 'HOla amor!', froWho: FroWho.me),
    Message(text: 'Hoa causa', froWho: FroWho.me)
  ];

  Future<void> sendMessage(String text) async{
    //implementar metodo
  }
}
