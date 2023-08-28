import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:yes_no_app/presentation/providers/chat_provider.dart';
import 'package:yes_no_app/presentation/screens/chat/chat_screen.dart';

import 'config/theme/app_theme.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        //Se coloca el guion bajo porque no se usa un argumento
        //Porque se crea el ChatProvider a nivel global de la aplicación
        ChangeNotifierProvider(create: (_) => ChatProvider())
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: AppTheme(selectedColor: 4).theme(),
        title: 'Yes No App',
        home: const ChatScreen(),
        // Scaffold(
        //   appBar: AppBar(
        //     title: const Text('Material App Bar'),
        //   ),
        //   body: Center(
        //     child: FilledButton.tonal(
        //       onPressed: (){}, 
        //       child: const Text('Click me'),
        //     ),
        //   ),
        // ),
      ),
    );
  }
}