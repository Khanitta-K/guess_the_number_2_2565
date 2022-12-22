import 'dart:io';
import 'dart:math';

void main(){
  final r = Random();
  var answer = r.nextInt(100)+1;
  var count = 0;
  int? guess;
  print('╔═══════════════════════════════════════════════════════');
  print('║                    GUESS THE NUMBER                   ');
  print('╟───────────────────────────────────────────────────────');
  do{
    stdout.write('║ Guess the number between 1 and 100 : ');
    var input = stdin.readLineSync();

    count++;
    guess = int.tryParse(input!) ;

    if (guess == null) {
      continue;
    }

    doGuess(guess, answer,count);

  } while(guess != answer);
  print('╟───────────────────────────────────────────────────────');
  print('║                        THE END                        ');
  print('╚═══════════════════════════════════════════════════════');
}

void doGuess(int guess,int answer,int count){
  if (guess == answer) {
    print('║ → $answer is CORRECT ♥, total guesses: $count');
    return;
  }
  else if (guess < answer) {
    print('║ → $guess TOO LESS! ▼');
    print('╟───────────────────────────────────────────────────────');
    return;
  }
  else {
    print('║ → $guess TOO HIGH! ▲');
    print('╟───────────────────────────────────────────────────────');
    return;

  }
}