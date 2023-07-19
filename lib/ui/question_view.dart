import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:regexorobsfucation/ui/answer_view.dart';
import 'package:regexorobsfucation/game_cubit.dart';
import 'package:regexorobsfucation/ui/ui_elements.dart';

class QuestionView extends StatefulWidget {
  final String title;

  const QuestionView({super.key, required this.title});

  @override
  State<QuestionView> createState() => _QuestionViewState();
}

class _QuestionViewState extends State<QuestionView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<GameCubit, GameState>(
        builder: (BuildContext context, GameState state) {
          if (state.isGameEnded) {
            navigateTo(context, const AnswerView());
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
                                submitAnswer: () => context.read<GameCubit>().judgeGuess('r'),
                              ),
                              GuessButton(
                                buttonText: "OBFUSCATION",
                                submitAnswer: () => context.read<GameCubit>().judgeGuess('o'),
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

/// Just used to de-clutter UI
void navigateTo(BuildContext context, Widget view) {
  WidgetsBinding.instance.addPostFrameCallback((_) {
    Navigator.push(
      context,
      PageRouteBuilder(
        maintainState: true,
        transitionDuration: const Duration(milliseconds: 600),
        pageBuilder: (context, animation, secondaryAnimation) {
          return FadeTransition(
            opacity: Tween<double>(begin: 0.0, end: 1.0).animate(
              CurvedAnimation(
                parent: animation,
                curve: Curves.easeIn,
              ),
            ),
            child: view,
          );
        },
      ),
    );
  });
}
