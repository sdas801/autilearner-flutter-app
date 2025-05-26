
import 'package:autilearner_flutter_app/src/component/play_card.dart';
import 'package:autilearner_flutter_app/src/page/learn_a_to_z.dart';
import 'package:autilearner_flutter_app/src/page/learn_animals.dart';
import 'package:autilearner_flutter_app/src/page/learn_emotion.dart';
import 'package:autilearner_flutter_app/src/page/learn_shapes.dart';
import 'package:autilearner_flutter_app/src/page/social_story.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                Text(
                  'AutiLearner',
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff1f3a8a),
                  ),
                ),
                Image.asset(
                  'assets/images/main_banner.png',
                  width: double.infinity,
                  height: 200,
                  fit: BoxFit.fill,
                ),
                SizedBox(height: 20),
                Text(
                  'Pick a category',
                  style: TextStyle(
                    fontSize: 20,
                    color: Color(0xff1f3a8a),
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Expanded(
                  child: GridView.count(
                    crossAxisCount: 2,
                    crossAxisSpacing: 20.0,
                    mainAxisSpacing: 20.0,
                    childAspectRatio: 0.8,

                    children: [
                      PlayCard(
                        image: 'assets/images/abc.png',
                        name: 'Learn & Play',
                        onTap: (context) => LearnAtoZ(),
                      ),
                      PlayCard(
                        image: 'assets/images/animals.png',
                        name: 'Learn Animals',
                        onTap: (context) => LearnAnimals(),
                      ),
                      PlayCard(
                        image: 'assets/images/shapes.png',
                        name: 'Learn Shapes',
                        onTap: (context) => LearnShapes(),
                      ),
                      PlayCard(
                        image: 'assets/images/learn_emotion_banner.png',
                        name: 'Learn Emotion',
                        onTap: (context) => LearnEmotion(),
                      ),
                      PlayCard(
                        image: 'assets/images/special_story.png',
                        name: 'Special Story',
                        onTap: (context) => SocialStory(),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
