import 'package:flutter_adv_basics_challenge/models/quiz_answer.dart';
import 'package:flutter_adv_basics_challenge/models/quiz_question.dart';

const List<QuizQuestion> questions = <QuizQuestion>[
  QuizQuestion(
    1,
    "What is Flutter?",
    [
      QuizAnswer(1, "It is DBMS toolkit", false),
      QuizAnswer(2, "It is an Open-source UI toolkit", true),
      QuizAnswer(3, "It is an Open-source web development framework", false),
      QuizAnswer(4, "None of these", false),
    ],
  ),
  QuizQuestion(
    2,
    "Does flutter support desktop application development?",
    [
      QuizAnswer(1, "Yes", true),
      QuizAnswer(2, "No", false),
    ],
  ),
  QuizQuestion(
    3,
    "Which of the following widget is used for repeating content in Flutter?",
    [
      QuizAnswer(1, "ListView", true),
      QuizAnswer(2, "ArrayView", false),
      QuizAnswer(3, "ExpandedView", false),
      QuizAnswer(4, "None of these", false),
    ],
  ),
  QuizQuestion(
    4,
    "Flutter’s rendering engine is primarily written in which programming language?",
    [
      QuizAnswer(1, "Java", false),
      QuizAnswer(2, "C++", true),
      QuizAnswer(3, "Google Dart", false),
      QuizAnswer(4, "C#", false),
    ],
  ),
  QuizQuestion(
    5,
    "Flutter is developed by ……………………………",
    [
      QuizAnswer(1, "Google", true),
      QuizAnswer(2, "Meta", false),
      QuizAnswer(3, "Microsoft", false),
      QuizAnswer(4, "Twitter", false),
    ],
  ),
  QuizQuestion(
    6,
    "Which of the following language is used to build flutter app?",
    [
      QuizAnswer(1, "Go", false),
      QuizAnswer(2, "Java", false),
      QuizAnswer(3, "Dart", true),
      QuizAnswer(4, "React", false),
    ],
  ),
  QuizQuestion(
    7,
    "Flutter have mainly ……………… types of widgets.",
    [
      QuizAnswer(1, "Tow", true),
      QuizAnswer(2, "Three", false),
      QuizAnswer(3, "Four", false),
      QuizAnswer(4, "Five", false),
    ],
  ),
  QuizQuestion(
    8,
    "A sequence of asynchronous events is often referred to as a stream.",
    [
      QuizAnswer(1, "True", true),
      QuizAnswer(2, "False", false),
    ],
  ),
  QuizQuestion(
    9,
    "Which element is used as an identifier in Flutter?",
    [
      QuizAnswer(1, "Serial", false),
      QuizAnswer(2, "Widgets", false),
      QuizAnswer(3, "Keys", true),
      QuizAnswer(4, "All apply", false),
    ],
  ),
  QuizQuestion(
    10,
    "…………………… component allow us to specify the distance between widgets on the screen.",
    [
      QuizAnswer(1, "Table", false),
      QuizAnswer(2, "AppBar", false),
      QuizAnswer(3, "SizedBox", true),
      QuizAnswer(4, "Safe area", false),
    ],
  ),
  QuizQuestion(
    11,
    "What are the features of Flutter?",
    [
      QuizAnswer(1, "Fast development", false),
      QuizAnswer(2, "Huge widget catalog", false),
      QuizAnswer(3, "High-performance application", false),
      QuizAnswer(4, "All apply", true),
    ],
  ),
  QuizQuestion(
    12,
    "Everything is a widget in Flutter. True or False?",
    [
      QuizAnswer(1, "True", true),
      QuizAnswer(2, "False", false),
    ],
  ),
  QuizQuestion(
    13,
    "Unlike other programming languages Dart does not support ……………",
    [
      QuizAnswer(1, "classes", false),
      QuizAnswer(2, "interfaces", false),
      QuizAnswer(3, "arrays", true),
      QuizAnswer(4, "object-oriented", false),
    ],
  ),
  QuizQuestion(
    14,
    "Which of the following option is used to represent a collection of objects in Dart?",
    [
      QuizAnswer(1, "String", false),
      QuizAnswer(2, "Numbers", false),
      QuizAnswer(3, "Booleans", false),
      QuizAnswer(4, "Lists and Maps", true),
    ],
  ),
  QuizQuestion(
    15,
    "Which of the following is used to load images from the flutter project’s assets?",
    [
      QuizAnswer(1, "Image", false),
      QuizAnswer(2, "Image.file", false),
      QuizAnswer(3, "Image.asset", true),
      QuizAnswer(4, "Image.memory", false),
    ],
  ),
  QuizQuestion(
    16,
    "The most important properties of the Image widget are ………………",
    [
      QuizAnswer(1, "width, double", false),
      QuizAnswer(2, "height, double", false),
      QuizAnswer(3, "image, ImageProvider", false),
      QuizAnswer(4, "All apply", true),
    ],
  ),
  QuizQuestion(
    17,
    "What does SDK stands for?",
    [
      QuizAnswer(1, "Software Data Kit", false),
      QuizAnswer(2, "Software Database Kit", false),
      QuizAnswer(3, "Software Development Kit", true),
      QuizAnswer(4, "None of these", false),
    ],
  ),
  QuizQuestion(
    18,
    "Choose the best editors for Flutter app development.",
    [
      QuizAnswer(1, "VS Code", false),
      QuizAnswer(2, "Sublime Text", false),
      QuizAnswer(3, "Android Studio", false),
      QuizAnswer(4, "All apply", true),
    ],
  ),
  QuizQuestion(
    19,
    "What are the type of tests, that we can perform in flutter?",
    [
      QuizAnswer(1, "Unit test", false),
      QuizAnswer(2, "Widget test", false),
      QuizAnswer(3, "Integration test", false),
      QuizAnswer(4, "All apply", true),
    ],
  ),
  QuizQuestion(
    20,
    "Which of the following animation allows us to represent real-world behavior in Flutter?",
    [
      QuizAnswer(1, "Math-based", false),
      QuizAnswer(2, "Graph-based", false),
      QuizAnswer(3, "Physics-based", true),
      QuizAnswer(4, "None of these", false),
    ],
  ),
];
