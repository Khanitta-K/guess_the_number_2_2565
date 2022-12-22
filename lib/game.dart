// ignore_for_file: avoid_print

import 'dart:math';

// enumeration
enum GuessResult {
  correct, tooHigh, tooLow
}

class Game {
  final int answer;
  int _totalGuesses = 0;
  static List<int> _listsumGuesses =[];

  // constructor
  Game(int maxRandom) : answer = Random().nextInt(maxRandom) + 1;


  GuessResult doGuess(int guess) {
    _totalGuesses++;

    if (guess == answer) {
      _listsumGuesses.add(totalGuesses);
      return GuessResult.correct;
    } else if (guess > answer) {
      return GuessResult.tooHigh;
    } else {
      return GuessResult.tooLow;
    }
  }

  // getter
  int get totalGuesses {
    return _totalGuesses;
  }

  List get getSumGuesses {
    return _listsumGuesses;
  }

}