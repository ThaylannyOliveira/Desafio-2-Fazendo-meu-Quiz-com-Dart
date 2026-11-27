/// Normaliza uma resposta para facilitar a comparação.
String normalizeAnswer(String answer) => answer.trim().toUpperCase();

/// Retorna true quando a resposta é uma das alternativas A, B, C ou D.
bool isValidAnswer(String answer) =>
    const ['A', 'B', 'C', 'D'].contains(normalizeAnswer(answer));

/// Mensagem final baseada na proporção de acertos.
String feedbackForScore(int correct, int total) {
  if (total <= 0) return 'Obrigado por participar!';
  final double percentage = correct / total;

  if (percentage == 1) {
    return 'INCRÍVEL! Você enxergou além do óbvio e acertou tudo!';
  } else if (percentage >= 0.8) {
    return 'Mandou muito bem! Sua curiosidade está afiada.';
  } else if (percentage >= 0.5) {
    return 'Boa! Você já sabe bastante, e ainda descobriu coisas novas.';
  } else {
    return 'Toda descoberta começa com uma pergunta. Tente novamente!';
  }
}
