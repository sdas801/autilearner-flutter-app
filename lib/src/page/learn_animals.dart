import 'dart:math';

import 'package:autilearner_flutter_app/src/page/score_board.dart';
import 'package:flutter/material.dart';

class LearnAnimals extends StatefulWidget {
  const LearnAnimals({super.key});

  @override
  State<LearnAnimals> createState() => _LearnAnimalsState();
}

class _LearnAnimalsState extends State<LearnAnimals> {
  late String questionShape;
  late List<String> listOptions;
  late List<int> colorFlag;
  bool tapActive = false;

  int result = 0;
  int notify = 0;

  int index = 0;

  @override
  void initState() {
    super.initState();
    Random random = Random();
    _questionList.shuffle(random);
    questionInterval();
  }

  void questionInterval() {
    if (index < _questionList.length) {
      setState(() {
        notify = 0;

        questionShape = _questionList[index].questionShape;
        listOptions = _questionList[index].filterdList();
        colorFlag = List.filled(4, 0);
      });
    } else {
      setState(() {});
    }
  }

  @override
  Widget build(BuildContext context) {
    return index == 20
        ? ScoreBoard(result: result, index: index)
        : Scaffold(
          appBar: AppBar(title: Text('Learn Animals')),
          body: Padding(
            padding: EdgeInsets.all(20.0),
            child: Column(
              children: [
                Text('Guess the name of the animal'),
                SizedBox(height: 50),
                Container(
                  child: Image.asset(
                    'assets/images_animal/${questionShape}.png',
                    width: double.infinity,
                    height: 200,
                    fit: BoxFit.contain,
                  ),
                ),
                SizedBox(height: 50),
                Expanded(
                  child: GridView.count(
                    crossAxisCount: 2,
                    mainAxisSpacing: 40,
                    crossAxisSpacing: 35,
                    childAspectRatio: 4,
                    padding: EdgeInsets.symmetric(horizontal: 15.0),
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          color:
                              colorFlag[0] == 1
                                  ? Colors.green
                                  : colorFlag[0] == 2
                                  ? Colors.redAccent
                                  : Colors.white,
                          borderRadius: BorderRadius.zero,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withValues(alpha: 1),
                              blurRadius: 3,
                              spreadRadius: 5,
                              blurStyle: BlurStyle.normal,
                            ),
                          ],
                        ),
                        child: TextButton(
                          onPressed:
                              tapActive
                                  ? null
                                  : () async {
                                    setState(() {
                                      if (questionShape == listOptions[0]) {
                                        tapActive = true;

                                        colorFlag[0] = 1;
                                        notify = 1;

                                        result++;
                                      } else if (questionShape !=
                                          listOptions[0]) {
                                        tapActive = true;

                                        colorFlag[0] = 2;
                                        notify = 2;
                                      }
                                    });
                                    await Future.delayed(Duration(seconds: 1));
                                    tapActive = false;
                                    index++;
                                    questionInterval();
                                  },
                          child: Text('${listOptions[0]}'),
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color:
                              colorFlag[1] == 1
                                  ? Colors.green
                                  : colorFlag[1] == 2
                                  ? Colors.redAccent
                                  : Colors.white,
                          borderRadius: BorderRadius.zero,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withValues(alpha: 1),
                              blurRadius: 3,
                              spreadRadius: 5,
                              blurStyle: BlurStyle.normal,
                            ),
                          ],
                        ),
                        child: TextButton(
                          onPressed:
                              tapActive
                                  ? null
                                  : () async {
                                    setState(() {
                                      if (questionShape == listOptions[1]) {
                                        tapActive = true;

                                        colorFlag[1] = 1;
                                        notify = 1;

                                        result++;
                                      } else if (questionShape !=
                                          listOptions[1]) {
                                        tapActive = true;

                                        colorFlag[1] = 2;
                                        notify = 2;
                                      }
                                    });
                                    await Future.delayed(Duration(seconds: 1));
                                    tapActive = false;

                                    index++;
                                    questionInterval();
                                  },
                          child: Text('${listOptions[1]}'),
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color:
                              colorFlag[2] == 1
                                  ? Colors.green
                                  : colorFlag[2] == 2
                                  ? Colors.redAccent
                                  : Colors.white,
                          borderRadius: BorderRadius.zero,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withValues(alpha: 1),
                              blurRadius: 3,
                              spreadRadius: 5,
                              blurStyle: BlurStyle.normal,
                            ),
                          ],
                        ),
                        child: TextButton(
                          onPressed:
                              tapActive
                                  ? null
                                  : () async {
                                    setState(() {
                                      if (questionShape == listOptions[2]) {
                                        tapActive = true;

                                        colorFlag[2] = 1;
                                        notify = 1;

                                        result++;
                                      } else if (questionShape !=
                                          listOptions[2]) {
                                        tapActive = true;

                                        colorFlag[2] = 2;
                                        notify = 2;
                                      }
                                    });
                                    await Future.delayed(Duration(seconds: 1));
                                    tapActive = false;

                                    index++;
                                    questionInterval();
                                  },
                          child: Text('${listOptions[2]}'),
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color:
                              colorFlag[3] == 1
                                  ? Colors.green
                                  : colorFlag[3] == 2
                                  ? Colors.redAccent
                                  : Colors.white,
                          borderRadius: BorderRadius.zero,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withValues(alpha: 1),
                              blurRadius: 3,
                              spreadRadius: 5,
                              blurStyle: BlurStyle.normal,
                            ),
                          ],
                        ),
                        child: TextButton(
                          onPressed:
                              tapActive
                                  ? null
                                  : () async {
                                    setState(() {
                                      if (questionShape == listOptions[3]) {
                                        tapActive = true;

                                        colorFlag[3] = 1;
                                        notify = 1;

                                        result++;
                                      } else if (questionShape !=
                                          listOptions[3]) {
                                        tapActive = true;

                                        colorFlag[3] = 2;
                                        notify = 2;
                                      }
                                    });
                                    await Future.delayed(Duration(seconds: 1));
                                    tapActive = false;

                                    index++;
                                    questionInterval();
                                  },
                          child: Text('${listOptions[3]}'),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          bottomNavigationBar: Container(
            height: 100,
            width: double.infinity,
            color:
                notify == 0
                    ? null
                    : notify == 1
                    ? Colors.green
                    : Colors.redAccent,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  if (notify != 0)
                    Text(
                      notify == 1
                          ? 'Correct Answer!\nAnswer is: $questionShape'
                          : 'Wrong Answer!\nAnswer is: $questionShape',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                  SizedBox(width: 50, height: 50),
                  if (notify != 0)
                    Image.asset(
                      notify == 1
                          ? 'assets/images_score/correct.png'
                          : 'assets/images_score/wrong.png',

                      width: 70,
                      height: 70,
                      fit: BoxFit.contain,
                    ),
                ],
              ),
            ),
          ),
        );
  }
}

const List<String> _items = const [
  'bear',
  'cat',
  'dog',
  'duck',
  'elephant',
  'fox',
  'frog',
  'giraffe',
  'hippo',
  'kangaroo',
  'leopard',
  'lion',
  'owl',
  'panda',
  'peacock',
  'rat',
  'snake',
  'tiger',
  'wolf',
  'zebra',
];

class _Question {
  final String questionShape;

  _Question({required this.questionShape});
  List<String> filterdList() {
    List<String> templist =
        _items.where((element) => element != questionShape).toList();
    Random random = Random();
    templist.shuffle(random);
    List<String> listThree = templist.take(3).toList();
    listThree.add(questionShape);
    listThree.shuffle(random);
    return listThree;
  }
}

List<_Question> _questionList = [
  for (int i = 0; i < 20; i++) _Question(questionShape: _items[i]),
];
