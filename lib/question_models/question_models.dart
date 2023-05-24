class Quiz {
  final String question;
  final List<String> answers;

  Quiz({required this.question, required this.answers});

  factory Quiz.fromJson(Map<String, dynamic> json) {
    return Quiz(
      question: json['question'],
      answers: List<String>.from(json['answers']),
    );
  }
}
