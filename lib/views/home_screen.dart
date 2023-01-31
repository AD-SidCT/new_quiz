import 'package:flutter/material.dart';
import 'package:new_quiz/models/button_file.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text('Faviourate Quiz'),
      ),

      body: Center(
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
    );
  }
}
