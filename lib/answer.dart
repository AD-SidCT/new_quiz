import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
 // const Answer({Key? key, required this.selectHandler}) : super(key: key);

  final void Function() selectHandler;
  final String answerText;

 Answer(this.selectHandler, this.answerText);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: double.infinity,
        color: Colors.blue,
        child: ElevatedButton(
         // textColor: Colors.white,
          child: Text(answerText),
          onPressed: selectHandler,
        ),
      ),
    );
  }
}
