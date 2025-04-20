import 'dart:io';

class Question {
  String questionText;
  List<String> options;
  int correctAnswerIndex;

  Question(this.questionText, this.options, this.correctAnswerIndex);
}

void main() {
  List<Question> questions = [
    Question(
      '1. What keyword is used to create a function in Dart?',
      ['a. func', 'b. function', 'c. void', 'd. def'],
      2,
    ),
    Question(
      '2. Which keyword is used to define a class in Dart?',
      ['a. object', 'b. class', 'c. struct', 'd. new'],
      1,
    ),
    Question(
      '3. How do you create an instance of a class?',
      ['a. new MyClass();', 'b. MyClass()', 'c. instance MyClass()', 'd. create MyClass()'],
      0,
    ),
    Question(
      '4. What is the purpose of the "this" keyword in Dart?',
      ['a. Refers to the class itself', 'b. Refers to the superclass', 'c. Refers to a global variable', 'd. Refers to a local variable'],
      0,
    ),
    Question(
      '5. Which operator is used to check if an object is of a particular type?',
      ['a. instanceof', 'b. is', 'c. typeof', 'd. equals'],
      1,
    ),
    Question(
      '6. What is the default return type of a function that doesn\'t return anything?',
      ['a. void', 'b. null', 'c. int', 'd. return'],
      0,
    ),
    Question(
      '7. How do you inherit from another class in Dart?',
      ['a. extends', 'b. inherit', 'c. implements', 'd. interface'],
      0,
    ),
    Question(
      '8. Which keyword is used to implement an interface in Dart?',
      ['a. implements', 'b. inherit', 'c. interface', 'd. extends'],
      0,
    ),
    Question(
      '9. How can you define a named parameter in a Dart function?',
      ['a. In brackets {}', 'b. In parentheses ()', 'c. Using var', 'd. Using &'],
      0,
    ),
    Question(
      '10. How do you create a private variable in Dart?',
      ['a. Use _ before the variable name', 'b. Use private keyword', 'c. Use var keyword', 'd. Use final keyword'],
      0,
    ),
  ];

  int score = 0;

  for (var i = 0; i < questions.length; i++) {
    print(questions[i].questionText);
    for (var j = 0; j < questions[i].options.length; j++) {
      print(questions[i].options[j]);
    }

    stdout.write('Enter your answer (a/b/c/d): ');
    String? answer = stdin.readLineSync();

    if (answer == null) continue;

    int selectedIndex;
    switch (answer.toLowerCase()) {
      case 'a':
        selectedIndex = 0;
        break;
      case 'b':
        selectedIndex = 1;
        break;
      case 'c':
        selectedIndex = 2;
        break;
      case 'd':
        selectedIndex = 3;
        break;
      default:
        print('Invalid answer.');
        continue;
    }

    if (selectedIndex == questions[i].correctAnswerIndex) {
      score++;
      print('Correct!\n');
    } else {
      print('Wrong answer.\n');
    }
  }

  print('You scored $score out of ${questions.length}.');
}
