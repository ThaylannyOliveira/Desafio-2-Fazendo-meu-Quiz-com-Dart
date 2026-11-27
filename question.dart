/// Representa uma pergunta do quiz.
class QuizQuestion {
  final String statement;
  final List<String> options;
  final int correctIndex;
  final String explanation;

  const QuizQuestion({
    required this.statement,
    required this.options,
    required this.correctIndex,
    required this.explanation,
  });
}
