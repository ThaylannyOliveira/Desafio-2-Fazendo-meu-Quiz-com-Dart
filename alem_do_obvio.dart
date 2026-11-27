import 'dart:io';
import 'dart:math';

import 'package:alem_do_obvio/question.dart';
import 'package:alem_do_obvio/questions.dart';
import 'package:alem_do_obvio/quiz.dart';

const List<String> letters = ['A', 'B', 'C', 'D'];

void main() {
  showWelcome();
  final String playerName = askPlayerName();

  bool playAgain = true;
  while (playAgain) {
    final bool completed = runQuiz(playerName);
    if (!completed) break;
    playAgain = askPlayAgain();
  }

  print('\n✨ Obrigado por jogar, $playerName! Continue curioso.');
}

void showWelcome() {
  print('''
╔════════════════════════════════════════════════════╗
║                 ALÉM DO ÓBVIO                    ║
║       O que a Ciência Explica?                    ║
╚════════════════════════════════════════════════════╝
Bem-vindo(a)! Prepare-se para descobrir a ciência
escondida nas coisas que parecem comuns.
''');
}

String askPlayerName() {
  while (true) {
    stdout.write('Qual é o seu nome? ');
    final String? input = stdin.readLineSync();
    if (input == null) return 'Jogador';
    final String name = input.trim();
    if (name.isNotEmpty) return name;
    print('Digite um nome para começar.');
  }
}

/// Executa uma partida. Retorna false se o jogador encerrar a entrada.
bool runQuiz(String playerName) {
  final List<QuizQuestion> questions = List<QuizQuestion>.from(quizQuestions);
  questions.shuffle(Random()); // Extra: cada partida pode ter outra ordem.
  int score = 0;

  print('\n$playerName, o quiz tem ${questions.length} perguntas. Boa sorte!');
  print('Digite A, B, C ou D.\n');

  for (int i = 0; i < questions.length; i++) {
    final QuizQuestion question = questions[i];
    print('────────────────────────────────────────────────────');
    print('PERGUNTA ${i + 1} DE ${questions.length}');
    print(question.statement);

    for (int optionIndex = 0; optionIndex < question.options.length; optionIndex++) {
      print('  ${letters[optionIndex]}) ${question.options[optionIndex]}');
    }

    final int? answerIndex = askAnswer();
    if (answerIndex == null) {
      print('\nEntrada encerrada. A partida foi interrompida.');
      return false;
    }

    if (answerIndex == question.correctIndex) {
      score++;
      print('\n✅ Isso mesmo, $playerName! Resposta correta.');
    } else {
      final String correctLetter = letters[question.correctIndex];
      final String correctText = question.options[question.correctIndex];
      print('\n❌ Não foi dessa vez. A resposta correta era:');
      print('$correctLetter) $correctText');
    }
    print('💡 Você sabia? ${question.explanation}\n');
  }

  showFinalScore(playerName, score, questions.length);
  return true;
}

/// Repete a pergunta até receber uma opção válida; null indica fim da entrada.
int? askAnswer() {
  while (true) {
    stdout.write('Sua resposta: ');
    final String? input = stdin.readLineSync();
    if (input == null) return null;

    final String answer = normalizeAnswer(input);
    if (isValidAnswer(answer)) {
      return letters.indexOf(answer);
    }

    print('Resposta inválida. Digite A, B, C ou D (não deixe em branco).');
  }
}

void showFinalScore(String playerName, int score, int total) {
  final double percentage = (score / total) * 100;
  print('''
╔════════════════════════════════════════════════════╗
║                  RESULTADO FINAL                  ║
╚════════════════════════════════════════════════════╝
Jogador: $playerName
Pontuação: $score de $total perguntas corretas
Desempenho: ${percentage.toStringAsFixed(0)}%

${feedbackForScore(score, total)}
''');
}

bool askPlayAgain() {
  while (true) {
    stdout.write('Quer jogar novamente? (S/N): ');
    final String? input = stdin.readLineSync();
    if (input == null) return false;
    final String answer = normalizeAnswer(input);
    if (answer == 'S' || answer == 'SIM') return true;
    if (answer == 'N' || answer == 'NAO' || answer == 'NÃO') return false;
    print('Digite S para sim ou N para não.');
  }
}

