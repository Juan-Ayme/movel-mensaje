import 'package:aplicacion_mensaje_m/presentation/screens/chat/chat_screen.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  ThemeData themeData = ThemeData.dark();
  void changeTheme(ThemeData theme) {
    setState(() {
      themeData = theme;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Aplicacion Mensaje',
        debugShowCheckedModeBanner: false,
        theme: themeData,
        home: ChatSreen(
          changeTheme: changeTheme,
        ));
  }
}
