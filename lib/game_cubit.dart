import 'dart:math';
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:regexorobsfucation/sources.dart';

class GameState {
  final String? winState; // winState: null or '' = user hasn't guessed
  bool get isGameEnded => winState == null || winState == '' ? false : true;
  // TODO: see below: "why must this be '' and not 'null'? it fails to copyWith properly if 'null'."

  final Map<String, Object?> gamedata; // an Object containing code snippet(s) & info about them
  final int codeSnippetType; // Regex (0) or Obfuscation (1)?
  final int codeSnippetIndex; // the index of the code snippet in `gamedata` being used
  final int totalNumberOfSnippets; // this is calculated at setup and never changed

  /// indexSet arrays are stored as 3 ints
  /// e.g.(0, 5, 1) where (0=regex, 5th data object in Regex object list, 1st code snippet in object)
  final Set<List<int>> indexSet;

  String get codeSnippet => (gamedata['code'] as List<String>)[codeSnippetIndex];
  String? get source => gamedata['source'] == null ? null : gamedata['source'] as String;
  String? get author => gamedata['author'] == null ? null : gamedata['author'] as String;
  String? get site => gamedata['authSite'] == null ? null : gamedata['authSite'] as String;

  const GameState({
    required this.gamedata,
    required this.codeSnippetType,
    required this.winState,
    required this.indexSet,
    required this.totalNumberOfSnippets,
    required this.codeSnippetIndex,
  });

  GameState copyWith({
    Map<String, Object?>? gamedata,
    int? codeSnippetType,
    String? winState,
    Set<List<int>>? indexSet,
    int? codeSnippetIndex,
    int? totalNumberOfSnippets,
  }) =>
      GameState(
        gamedata: gamedata ?? this.gamedata,
        codeSnippetType: codeSnippetType ?? this.codeSnippetType,
        winState: winState ?? this.winState,
        indexSet: indexSet ?? this.indexSet,
        totalNumberOfSnippets: totalNumberOfSnippets ?? this.totalNumberOfSnippets,
        codeSnippetIndex: codeSnippetIndex ?? this.codeSnippetIndex,
      );
}

class GameCubit extends Cubit<GameState> {
  GameCubit() : super(_getInitialGameState());

  static GameState _getInitialGameState() {
    /// Get either a Regex or an Obfuscation code snippet list
    int typeIndex = Random().nextInt(2); // 0 (RegEx) or 1 (obfuscation)
    List<Map<String, Object?>> snippetList = typeIndex == 0 ? regexList : obfuscationList;

    /// Get a random sample data object from that list.
    int codeObjectIndex = Random().nextInt(snippetList.length);
    Map<String, Object?> gameData = snippetList.elementAt(codeObjectIndex);
    List<String> codeSnippetList = gameData['code'] as List<String>;
    int codeSnippetIndex = Random().nextInt(codeSnippetList.length);

    /// this add method only works in the initial state builder
    Set<List<int>> indexSet = {};
    indexSet.add([typeIndex, codeObjectIndex, codeSnippetIndex]);

    /// Calculate and store as a reference value the total number of displayable code snippets.
    int totalObfuscationObjects = 0;
    int totalRegexObjects = 0;

    for (Map<String, Object?> obj in regexList) {
      // Get the number of code snippets in each object
      Object? codeObj = obj['code'];
      if (codeObj is List) {
        totalRegexObjects += codeObj.length;
      } else if (codeObj is String) {
        totalRegexObjects++;
      }
    }
    for (Map<String, Object?> obj in obfuscationList) {
      Object? codeObj = obj['code'];
      if (codeObj is List) {
        totalObfuscationObjects += codeObj.length;
      } else if (codeObj is String) {
        totalObfuscationObjects++;
      }
    }

    int snippetsTotal = totalObfuscationObjects + totalRegexObjects;
    // print('regex snippets: $totalRegexObjects');
    // print('obfuscation snippets: $totalObfuscationObjects');

    return GameState(
      winState: null,
      totalNumberOfSnippets: snippetsTotal,
      codeSnippetType: typeIndex,
      codeSnippetIndex: codeSnippetIndex,
      gamedata: gameData,
      indexSet: indexSet,
    );
  }

  void getNewQuestion() {
    ///   This works much the same as _getInitialGameState() with the exception that it updates
    /// rather than returns the state object, and  will search for valid code snippet indexes
    /// until it finds one. If it doesn't it'll call _getInitialGameState() to reset the game.

    int typeIndex;
    int codeObjectIndex;
    int codeSnippetIndex;
    bool isNewIndex = false;

    Map<String, Object?> gameData;
    List<Map<String, Object?>> snippetList;

    do {
      typeIndex = Random().nextInt(2);
      snippetList = typeIndex == 0 ? regexList : obfuscationList;

      codeObjectIndex = Random().nextInt(snippetList.length);
      gameData = snippetList.elementAt(codeObjectIndex);

      codeSnippetIndex = Random().nextInt((gameData['code'] as List<String>).toList().length);

      List<int> newIndex = [typeIndex, codeObjectIndex, codeSnippetIndex];
      bool isNewIndex = !state.indexSet.any((element) => listEquals(element, newIndex));

      /* 
        N.B. The reason the below commented-out line doesn't work, is because lists are reference types in Dart. 
        When you add a list to a set, the set checks for uniqueness based on the object's identity, not its content. Even if two lists have the same values, they are considered different if they are distinct objects in memory.
        Because it must be a List<int> to allow for e.g. [1, 5, 5] it must not be a set, so dart:collection's listEquals compares for element-by-element equality based on content rather than identity.
      */
      /// isNewIndex = !state.indexSet.contains(newIndex); // if DOESN'T contain newIndex, is True

      if (isNewIndex) {
        Set<List<int>> indexSetToPass = state.indexSet;
        indexSetToPass.add(newIndex);

        emit(state.copyWith(
          winState:
              '', // TODO: why must this be '' and not 'null'? it fails to copyWith properly if 'null'.
          codeSnippetType: typeIndex,
          codeSnippetIndex: codeSnippetIndex,
          gamedata: gameData,
          indexSet: indexSetToPass,
        ));

        /// For debug
        // print('NEW_______');
        // print('new index: $newIndex');
        // print('new state: ${state.indexSet}');

        break;
      } else {
        // index already exists, try generating a new one
        continue;
      }
    } while (!isNewIndex && state.indexSet.length < state.totalNumberOfSnippets);

    if (state.indexSet.length >= state.totalNumberOfSnippets) {
      /// If the user has gone through them all, for now, we're going to reset everything.
      emit(_getInitialGameState());
    }
  }

  void judgeGuess(int userGuess) {
    if (userGuess == state.codeSnippetType) {
      emit(state.copyWith(winState: 'win'));
    } else {
      emit(state.copyWith(winState: 'lose'));
    }
  }
}
