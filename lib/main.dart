import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:regexorobsfucation/firebase.dart';
import 'package:regexorobsfucation/game_cubit.dart';
import 'package:regexorobsfucation/helpers.dart';
import 'package:regexorobsfucation/end_game_view.dart';
import 'package:regexorobsfucation/ui.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

// TO RUN LOCALLY: flutter run -d chrome
// flutter build web --web-renderer html

// Project Console: https://console.firebase.google.com/project/regex-or-obfuscation/overview
// Hosting URL: https://regex-or-obfuscation.web.app

void main() {
  /// Used web/index.html method as per docs; this not needed.
  // WidgetsFlutterBinding.ensureInitialized(); // essential for use with Firebase
  // await Firebase.initializeApp(options: firebaseOptions);
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
      home: MyHomePage(title: 'REGEX OR OBFUSCATION?'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  final String title;

  const MyHomePage({super.key, required this.title});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<GameCubit, GameState>(
        builder: (BuildContext context, GameState state) {
          if (state.isGameEnded) {
            navigateTo(context, const EndGameView());
            // WidgetsBinding.instance.addPostFrameCallback((_) {
            //   Navigator.push(
            //     context,
            //     PageRouteBuilder(
            //       maintainState: true,
            //       pageBuilder: (context, animation, secondaryAnimation) => const EndGameView(),
            //     ),
            //   );
            // });
          }

          return Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(height: 90),
                Expanded(
                  child: Center(
                    child: SingleChildScrollView(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          QuizBox(
                            quizText: state.codeSnippet,
                          ),
                          const SizedBox(height: 50),
                          Wrap(
                            children: [
                              GuessButton(
                                buttonText: "REGEX",
                                submitAnswer: () => context.read<GameCubit>().judgeGuess(0),
                              ),
                              GuessButton(
                                buttonText: "OBFUSCATION",
                                submitAnswer: () => context.read<GameCubit>().judgeGuess(1),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 80),
                const Align(
                  alignment: Alignment.bottomCenter,
                  child: Column(
                    children: [
                      LinkyLad(
                        text: "Made by ",
                        name: "Callum Beaney",
                        link: "https://callumbeaney.github.io/",
                      ),
                      LinkyLad(
                        text: "View this on ",
                        name: "Github",
                        link: "https://github.com/CallumBeaney/regex-or-obsfucation",
                      ),
                      SizedBox(height: 5),
                    ],
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
