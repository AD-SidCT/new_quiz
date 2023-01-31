import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Faviourate Quiz '),
      ),
      body: Center(
        child: Column(
          children: [
            Text(
              'Whats Your Faviourate Color',
              style: TextStyle(fontSize: 24),
              textAlign: TextAlign.center,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 350),
              child: Container(
                margin: EdgeInsets.all(20.0),
                width: MediaQuery.of(context).size.width,
                child: ElevatedButton(
                    onPressed: () => print('adnan'),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 100),
                      child: Text('Next Question'),
                    )),
              ),
            )
          ],
        ),
      ),
    );
  }
}
