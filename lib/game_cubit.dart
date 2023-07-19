import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:regexorobsfucation/code_snippets.dart';

class GameState {
  ///  WON'T be changed once a GameState has been initialised.
  final List<Snippet> snippetsQueue;

  /// WILL be changed each time copyWith is evoked.
  final Snippet currentSnippet; // the specific code sample object snippet
  final String? winState; // winState: null || '' == user hasn't guessed
  bool get isGameEnded => winState == null || winState == '' ? false : true;

  /// build data from currentSnippet -- this will be rebuilt with each copyWith()
  String get codeSnippetType => currentSnippet.type;
  String get codeSnippet => currentSnippet.code.join(''); // .toString() puts [] around the string
  String? get source => currentSnippet.source;
  String? get author => currentSnippet.author;
  String? get site => currentSnippet.authSite;

  const GameState({
    required this.snippetsQueue,
    required this.winState,
    required this.currentSnippet,
  });

  GameState copyWith({
    List<Snippet>? snippetsQueue,
    Snippet? currentSnippet,
    String? winState,
    int? totalNumberOfSnippets,
  }) =>
      GameState(
        snippetsQueue: snippetsQueue ?? this.snippetsQueue,
        currentSnippet: currentSnippet ?? this.currentSnippet,
        winState: winState ?? this.winState,
      );
}

class GameCubit extends Cubit<GameState> {
  GameCubit() : super(_getInitialGameState());

  static GameState _getInitialGameState() {
    /// Each snippet object in `snippetsList` contains multiple strings in its `code` parameter
    /// For this reason, we need to create a separate class instance for each of them containing
    ///   the shared parameters i.e. the snippet's author, source etc., and make it into a list.
    List<Snippet> separatedSnippets = snippetsList.expand((snippet) {
      return snippet.code.map((code) {
        return Snippet(
          type: snippet.type,
          code: [code], // parameter `code:` is a List<String> ; assignee `code` is a String.
          source: snippet.source,
          author: snippet.author,
          authSite: snippet.authSite,
        );
      });
    }).toList();

    separatedSnippets.shuffle();

    final Snippet firstEverSnippet = separatedSnippets.removeAt(0);

    return GameState(
      winState: null,
      currentSnippet: firstEverSnippet,
      snippetsQueue: separatedSnippets,
    );
  }

  void getNewQuestion() {
    if (state.snippetsQueue.isEmpty) {
      /// if the game's over just rebuild the list
      emit(_getInitialGameState());
      return;
    }

    final Snippet newSnippet = state.snippetsQueue.removeAt(0);

    emit(state.copyWith(
      winState: '', // TODO: why it fails to copyWith properly if 'null'?
      currentSnippet: newSnippet,
    ));
  }

  void judgeGuess(String userGuess) {
    if (userGuess == state.codeSnippetType) {
      emit(state.copyWith(winState: 'win'));
    } else {
      emit(state.copyWith(winState: 'lose'));
    }
  }
}
