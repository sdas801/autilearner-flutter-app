import 'package:flutter/material.dart';

class SocialStory extends StatefulWidget {
  const SocialStory({super.key});

  @override
  State<SocialStory> createState() => _SocialStoryState();
}

class _SocialStoryState extends State<SocialStory> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('The Meltdown Monster')),
      body: Column(
        children: [
          Text('Social Emotional Regulation'),
          Expanded(
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                
                spacing: 50.0,
                children: [
                  for (int i = 0; i <13; i++)
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Image.asset(
                        'assets/images_story/${i+1}.jpg',
                        height: 370,
                        width: 370,
                        fit: BoxFit.contain,
                      ),
                    ),
                ],
              ),
            ),
          ),
          Expanded(child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Image.asset('assets/images/meltdown_monster.png', height: 100,width: 100,fit: BoxFit.contain),
              SizedBox(height: 20,),
              Text('Swipe right and left to see the\nstory', textAlign: TextAlign.center,),
            ],
          ))
        ],
      ),
    );
  }
}
