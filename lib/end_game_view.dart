import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:regexorobsfucation/game_cubit.dart';
import 'package:regexorobsfucation/ui.dart';

class EndGameView extends StatelessWidget {
  const EndGameView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<GameCubit, GameState>(
        builder: (context, state) {
          /// Deprecated ↓↓↓ see 'Play Again' button's onPressed(){} down below.
          // if (state.isGameEnded == false) {
          //   WidgetsBinding.instance.addPostFrameCallback((_) {
          //     Navigator.pop(context);
          //   });
          // }

          return Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                /// TODO: fix cubit so this ↓↓↓ isn't necessary
                if (state.isGameEnded == true) ...[
                  Text(
                    state.winState == 'win' ? 'CORRECT' : 'WRONG!',
                    style: const TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: QuizBox(
                      quizText: state.codeSnippet,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 15.0),
                    child: Text(
                      state.codeSnippetType == 0 ? 'is RegEx!' : 'is obfuscation!',
                      style: const TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
                    ),
                  ),

                  /// Here build info about the code snippet being shown
                  if (state.author != null && state.source != null) ...[
                    if (state.site != null) ...[
                      LinkyLad(text: "...written by ", name: state.author!, link: state.site!),
                      LinkyLad(text: "Read in context ", name: "here", link: state.source!),
                    ] else if (state.author != null) ...[
                      LinkyLad(text: "...written by ", name: state.author!, link: null),
                      LinkyLad(text: "Read in context ", name: "here", link: state.source!),
                    ]
                  ] else if (state.author != null && state.source == null) ...[
                    LinkyLad(
                        text: "...written by ",
                        name: state.author!,
                        link: state.site == null ? null : state.site!),
                  ] else if (state.source != null && state.author == null) ...[
                    LinkyLad(text: "(Read in context ", name: "here)", link: state.source),
                  ],
                  Padding(
                    padding: const EdgeInsets.only(top: 22.5),
                    child: ElevatedButton(
                      style: ButtonStyle(
                        // shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                        //     borderRadius: BorderRadius.circular(0.0),
                        //     side: const BorderSide(color: Colors.red))),
                        backgroundColor: MaterialStateProperty.resolveWith<Color>(
                          (Set<MaterialState> states) {
                            if (states.contains(MaterialState.hovered)) {
                              return Colors.lightGreen;
                            } else {
                              return Colors.lightBlue[200]!;
                            }
                          },
                        ),
                      ),
                      onPressed: () {
                        context.read<GameCubit>().getNewQuestion();
                        Navigator.pop(context);
                      },
                      child: const Text(
                        'Play Again',
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                  ),
                ],
              ],
            ),
          );
        },
      ),
    );
  }
}
