import 'package:autilearner_flutter_app/src/page/home_page.dart';
import 'package:flutter/material.dart';

class ScoreBoard extends StatelessWidget {
  final int result;
  final int index;
  const ScoreBoard({super.key, required this.result, required this.index});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Image.asset(
                  'assets/images/exam.png',
                  height: 50,
                  width: 50,
                  fit: BoxFit.contain,
                ),
                Text('Results'),
              ],
            ),
            Image.asset('assets/images/celebration.png', fit: BoxFit.contain),
            Text('Good Work'),
            Text(
              'You made it to the end of this lesson keep practicing for a perfect score',
            ),
            Text('Your Score:'),
            Text('$result/$index'),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => HomePage()),
                );
              },
              child: Icon(Icons.home),
            ),
          ],
        ),
      ),
    );
  }
}
