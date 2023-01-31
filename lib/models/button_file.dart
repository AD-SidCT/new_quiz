import 'package:flutter/material.dart';

class Button_page extends StatelessWidget {
  final String btntext;

  const Button_page({Key? key, required this.btntext}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(5.0),
      width: MediaQuery.of(context).size.width,
      child: ElevatedButton(onPressed: ()=>print("adnan"),
          child:
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 100),
            child: Text(btntext),
          )
      ),
    );
  }
}
