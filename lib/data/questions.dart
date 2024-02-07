import 'package:flutter_adv_basics_challenge/models/quiz_answer.dart';
import 'package:flutter_adv_basics_challenge/models/quiz_question.dart';

const List<QuizQuestion> questions = <QuizQuestion>[
  QuizQuestion(
    1,
    "What is Flutter?",
    [
      QuizAnswer("It is DBMS toolkit", false),
      QuizAnswer("It is an Open-source UI toolkit", true),
      QuizAnswer("It is an Open-source web development framework", false),
      QuizAnswer("None of the above", false),
    ],
  ),
  QuizQuestion(
    2,
    "Does flutter support desktop application development?",
    [
      QuizAnswer("Yes", true),
      QuizAnswer("No", false),
    ],
  ),
  QuizQuestion(
    3,
    "Which of the following widget is used for repeating content in Flutter?",
    [
      QuizAnswer("ListView", true),
      QuizAnswer("ArrayView", false),
      QuizAnswer("ExpandedView", false),
      QuizAnswer("None of the above", false),
    ],
  ),
  QuizQuestion(
    4,
    "Flutter’s rendering engine is primarily written in which programming language?",
    [
      QuizAnswer("Java", false),
      QuizAnswer("C++", true),
      QuizAnswer("Google Dart", false),
      QuizAnswer("C#", false),
    ],
  ),
  QuizQuestion(
    5,
    "Flutter is developed by ……………………………",
    [
      QuizAnswer("Google", true),
      QuizAnswer("Meta", false),
      QuizAnswer("Microsoft", false),
      QuizAnswer("Twitter", false),
    ],
  ),
  QuizQuestion(
    6,
    "Which of the following language is used to build flutter app?",
    [
      QuizAnswer("Go", false),
      QuizAnswer("Java", false),
      QuizAnswer("Dart", true),
      QuizAnswer("React", false),
    ],
  ),
  QuizQuestion(
    7,
    "Flutter have mainly ……………… types of widgets.",
    [
      QuizAnswer("Tow", true),
      QuizAnswer("Three", false),
      QuizAnswer("Four", false),
      QuizAnswer("Five", false),
    ],
  ),
  QuizQuestion(
    8,
    "A sequence of asynchronous events is often referred to as a stream.",
    [
      QuizAnswer("True", true),
      QuizAnswer("False", false),
    ],
  ),
  QuizQuestion(
    9,
    "Which element is used as an identifier in Flutter?",
    [
      QuizAnswer("Serial", false),
      QuizAnswer("Widgets", false),
      QuizAnswer("Keys", true),
      QuizAnswer("All of the above", false),
    ],
  ),
  QuizQuestion(
    10,
    "…………………… component allow us to specify the distance between widgets on the screen.",
    [
      QuizAnswer("Table", false),
      QuizAnswer("AppBar", false),
      QuizAnswer("SizedBox", true),
      QuizAnswer("Safe area", false),
    ],
  ),
  QuizQuestion(
    11,
    "What are the features of Flutter?",
    [
      QuizAnswer("Fast development", false),
      QuizAnswer("Huge widget catalog", false),
      QuizAnswer("High-performance application", false),
      QuizAnswer("All of the above", true),
    ],
  ),
  QuizQuestion(
    12,
    "Everything is a widget in Flutter. True or False?",
    [
      QuizAnswer("True", true),
      QuizAnswer("False", false),
    ],
  ),
  QuizQuestion(
    13,
    "Unlike other programming languages Dart does not support ……………",
    [
      QuizAnswer("classes", false),
      QuizAnswer("interfaces", false),
      QuizAnswer("arrays", true),
      QuizAnswer("object-oriented", false),
    ],
  ),
  QuizQuestion(
    14,
    "Which of the following option is used to represent a collection of objects in Dart?",
    [
      QuizAnswer("String", false),
      QuizAnswer("Numbers", false),
      QuizAnswer("Booleans", false),
      QuizAnswer("Lists and Maps", true),
    ],
  ),
  QuizQuestion(
    15,
    "Which of the following is used to load images from the flutter project’s assets?",
    [
      QuizAnswer("Image", false),
      QuizAnswer("Image.file", false),
      QuizAnswer("Image.asset", true),
      QuizAnswer("Image.memory", false),
    ],
  ),
  QuizQuestion(
    16,
    "The most important properties of the Image widget are ………………",
    [
      QuizAnswer("width, double", false),
      QuizAnswer("height, double", false),
      QuizAnswer("image, ImageProvider", false),
      QuizAnswer("all of the above", true),
    ],
  ),
  QuizQuestion(
    17,
    "What does SDK stands for?",
    [
      QuizAnswer("Software Data Kit", false),
      QuizAnswer("Software Database Kit", false),
      QuizAnswer("Software Development Kit", true),
      QuizAnswer("None of the above", false),
    ],
  ),
  QuizQuestion(
    18,
    "Choose the best editors for Flutter app development.",
    [
      QuizAnswer("VS Code", false),
      QuizAnswer("Sublime Text", false),
      QuizAnswer("Android Studio", false),
      QuizAnswer("All of the above", true),
    ],
  ),
  QuizQuestion(
    19,
    "What are the type of tests, that we can perform in flutter?",
    [
      QuizAnswer("Unit test", false),
      QuizAnswer("Widget test", false),
      QuizAnswer("Integration test", false),
      QuizAnswer("All of the above", true),
    ],
  ),
  QuizQuestion(
    20,
    "Which of the following animation allows us to represent real-world behavior in Flutter?",
    [
      QuizAnswer("Math-based", false),
      QuizAnswer("Graph-based", false),
      QuizAnswer("Physics-based", true),
      QuizAnswer("None of these", false),
    ],
  ),
];
