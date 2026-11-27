import 'package:alem_do_obvio/questions.dart';
import 'package:alem_do_obvio/quiz.dart';

void main() {
  assert(quizQuestions.length >= 5, 'O quiz precisa ter pelo menos cinco perguntas.');
  for (final question in quizQuestions) {
    assert(question.options.length == 4, 'Cada pergunta deve ter quatro alternativas.');
    assert(question.correctIndex >= 0 && question.correctIndex < 4,
        'O índice da resposta correta deve apontar para A, B, C ou D.');
    assert(question.statement.isNotEmpty);
    assert(question.explanation.isNotEmpty);
  }

  assert(normalizeAnswer(' a ') == 'A');
  assert(isValidAnswer('a'));
  assert(isValidAnswer('D'));
  assert(!isValidAnswer('E'));
  assert(!isValidAnswer(''));
  assert(feedbackForScore(10, 10).contains('INCRÍVEL'));
  assert(feedbackForScore(8, 10).contains('Mandou muito bem'));
  assert(feedbackForScore(5, 10).contains('Boa!'));
  assert(feedbackForScore(2, 10).contains('Toda descoberta'));

  print('Verificação concluída: perguntas, alternativas, respostas e mensagens estão válidas.');
}
