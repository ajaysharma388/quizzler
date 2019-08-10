import './question.dart';

class QuestionBank {
  int _currentQuestion = 0;
  List<Question> _question = [
    Question(
        QuestionStatement: 'Some cats are actually allergic to humans',
        QuestionAnswer: true),
    Question(
        QuestionStatement: 'You can lead a cow down stairs but not up stairs.',
        QuestionAnswer: false),
    Question(
        QuestionStatement:
            'Approximately one quarter of human bones are in the feet.',
        QuestionAnswer: true),
    Question(
        QuestionStatement: 'A slug\'s blood is green.', QuestionAnswer: true),
    Question(
        QuestionStatement: 'Buzz Aldrin\'s mother\'s maiden name was \"Moon\".',
        QuestionAnswer: true),
    Question(
        QuestionStatement: 'It is illegal to pee in the Ocean in Portugal.',
        QuestionAnswer: true),
    Question(
        QuestionStatement:
            'No piece of square dry paper can be folded in half more than 7 times.',
        QuestionAnswer: false),
    Question(
        QuestionStatement:
            'In London, UK, if you happen to die in the House of Parliament, you are technically entitled to a state funeral, because the building is considered too sacred a place.',
        QuestionAnswer: true),
    Question(
        QuestionStatement:
            'The loudest sound produced by any animal is 188 decibels. That animal is the African Elephant.',
        QuestionAnswer: false),
    Question(
        QuestionStatement:
            'The total surface area of two human lungs is approximately 70 square metres.',
        QuestionAnswer: true),
    Question(
        QuestionStatement: 'Google was originally called \"Backrub\".',
        QuestionAnswer: true),
    Question(
        QuestionStatement:
            'Chocolate affects a dog\'s heart and nervous system; a few ounces are enough to kill a small dog.',
        QuestionAnswer: true),
    Question(
        QuestionStatement:
            'In West Virginia, USA, if you accidentally hit an animal with your car, you are free to take it home to eat.',
        QuestionAnswer: true),
  ];
  void nextQuestion() {
    if (_currentQuestion < _question.length) {
      _currentQuestion++;
    }
  }

  String getQuestionText() {
    return _question[_currentQuestion].QuestionStatement;
  }

  bool getCorrectAnswer() {
    return _question[_currentQuestion].QuestionAnswer;
  }

  int getTotalQuestion() {
    return _question.length;
  }

  void reStartQuiz() {
    _currentQuestion = 0;
  }

  bool isFinished() {
    if (_currentQuestion <= _question.length - 1) {
      return true;
    }
    reStartQuiz();
    return false;
  }
}
