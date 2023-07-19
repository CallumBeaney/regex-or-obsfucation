import 'package:flutter/material.dart';
import 'package:regexorobsfucation/game_cubit.dart';
import 'package:regexorobsfucation/ui/question_view.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

// TO RUN LOCALLY: flutter run -d chrome
// flutter build web
// Hosting URL: https://regex-or-obfuscation.web.app

void main() {
  runApp(BlocProvider(
    create: (_) => GameCubit(),
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'RegEx or Obfuscation?',
      home: QuestionView(title: 'REGEX OR OBFUSCATION?'),
    );
  }
}
