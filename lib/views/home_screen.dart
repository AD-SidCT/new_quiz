import 'package:flutter/material.dart';
import '../question.dart';
import '../answer.dart';

//import 'package:new_quiz/models/button_file.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final questions = const [
    {
      "questionText": "What\'s Your Faviourate Color ?",
      "answers": ['Black', 'Red', 'Green', 'White']
    },
    {
      "questionText": "What\'s Your Faviourate Animal ?",
      "answers": ['Rabbit', 'Snake', 'Elephant', 'Lion']
    },
    {
      "questionText": "What\'s Your Faviourate Programming Language ?",
      "answers": ['C', 'C++', 'Java', 'Dart']
    },
  ];

  int questionIndex = 0;

  void answerQuestion() {
    setState(() {
      questionIndex = questionIndex + 1;
    });
    print(questionIndex);
 if (questionIndex < questions.length) {
   //if(questionIndex == (questions.length - 1)){
      print('we have more questionsssssssssss');
    } else {
      print('no question');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Faviourate Quiz'),
      ),
      body: questionIndex < questions.length
          ? Column(
              children: [
                Question(
                  questions[questionIndex]['questionText'].toString(),
                ),
                ...(questions[questionIndex]['answers'] as List<String>)
                    .map((questions) {
                  return Answer(answerQuestion, 'answers');
                }).toList()


              ],
            )
          : Center(
              child: Text(' final answer  here'),
            ),

      /*

        Center(
        child: Column(

          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("What\'s Your Faviourate Color ",
              style: TextStyle(fontSize: 20),
                textAlign: TextAlign.center,
              ),
            ),

            Button_page(btntext: 'Black'),
            Button_page(btntext: 'Red'),
            Button_page(btntext: 'Green'),
            Button_page(btntext: 'White'),
          ],
        ),
      ),

      */
    );
  }
}
