import 'dart:math';

import 'package:autilearner_flutter_app/src/page/score_board.dart';
import 'package:flutter/material.dart';

class LearnAtoZ extends StatefulWidget {
  const LearnAtoZ({super.key});

  @override
  State<LearnAtoZ> createState() => _LearnAtoZState();
}

class _LearnAtoZState extends State<LearnAtoZ> {
  late String letter;
  late String answer;
  late List<String> listOptions;
  late List<int> colorFlag;
  int result = 0;
  int notify = 0;
  int index = 0;
  final String imagesAlphabet = 'assets/images_alphabet/';

  @override
  void initState() {
    super.initState();
    questionInterval();
  }

  void questionInterval() async {
    if (index < _questionList.length) {
      setState(() {
        notify = 0;
        letter = _questionList[index].questionLetter;
        answer = _questionList[index].answer;
        listOptions = _questionList[index].filterdList();
        colorFlag = List.filled(4, 0);
      });
    } else {
      setState(() {});
    }
  }

  @override
  Widget build(BuildContext context) {
    return index == 26
        ? ScoreBoard(result: result, index: index)
        : Scaffold(
          appBar: AppBar(title: Text('Learn A-Z')),
          body: Padding(
            padding: EdgeInsets.all(20.0),
            child: Column(
              children: [
                Text(
                  'Guess the option that starts with the given letter',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff1f3a8a),
                  ),
                ),
                Text(
                  letter,
                  style: TextStyle(
                    fontSize: 64,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff1f3a8a),
                  ),
                ),
                SizedBox(height: 10),
                Expanded(
                  child: GridView.count(
                    crossAxisCount: 2,
                    mainAxisSpacing: 50,
                    crossAxisSpacing: 10,
                    childAspectRatio: 1.5,
                    children: [
                      GestureDetector(
                        onTap: () async {
                          setState(() {
                            if (listOptions[0] == answer) {
                              colorFlag[0] = 1;
                              notify = 1;
                              result++;
                            } else if (listOptions[0] != answer) {
                              colorFlag[0] = 2;
                              notify = 2;
                            }
                          });
                          await Future.delayed(Duration(seconds: 1));
                          index++;
                          questionInterval();
                        },
                        child: Container(
                          color:
                              colorFlag[0] == 1
                                  ? Colors.green
                                  : colorFlag[0] == 2
                                  ? Colors.redAccent
                                  : null,

                          child: Image.asset(
                            '$imagesAlphabet/${listOptions[0]}.png',

                            fit: BoxFit.contain,
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () async {
                          setState(() {
                            if (listOptions[1] == answer) {
                              colorFlag[1] = 1;
                              notify = 1;
                              result++;
                            } else if (listOptions[1] != answer) {
                              colorFlag[1] = 2;
                              notify = 2;
                            }
                          });
                          await Future.delayed(Duration(seconds: 1));

                          index++;
                          questionInterval();
                        },
                        child: Container(
                          color:
                              colorFlag[1] == 1
                                  ? Colors.green
                                  : colorFlag[1] == 2
                                  ? Colors.redAccent
                                  : null,
                          child: Image.asset(
                            '$imagesAlphabet/${listOptions[1]}.png',

                            fit: BoxFit.contain,
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () async {
                          setState(() {
                            if (listOptions[2] == answer) {
                              colorFlag[2] = 1;
                              notify = 1;
                              result++;
                            } else if (listOptions[2] != answer) {
                              colorFlag[2] = 2;
                              notify = 2;
                            }
                          });
                          await Future.delayed(Duration(seconds: 1));
                          index++;
                          questionInterval();
                        },
                        child: Container(
                          color:
                              colorFlag[2] == 1
                                  ? Colors.green
                                  : colorFlag[2] == 2
                                  ? Colors.redAccent
                                  : null,
                          child: Image.asset(
                            '$imagesAlphabet/${listOptions[2]}.png',

                            fit: BoxFit.contain,
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () async {
                          setState(() {
                            if (listOptions[3] == answer) {
                              colorFlag[3] = 1;
                              notify = 1;
                              result++;
                            } else if ((listOptions[3] != answer)) {
                              colorFlag[3] = 2;
                              notify = 2;
                            }
                          });
                          await Future.delayed(Duration(seconds: 1));
                          index++;
                          questionInterval();
                        },
                        child: Container(
                          color:
                              colorFlag[3] == 1
                                  ? Colors.green
                                  : colorFlag[3] == 2
                                  ? Colors.redAccent
                                  : null,
                          child: Image.asset(
                            '$imagesAlphabet/${listOptions[3]}.png',

                            fit: BoxFit.contain,
                          ),
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
                          ? 'Correct Answer!\nAnswer is: $answer'
                          : 'Wrong Answer!\nAnswer is: $answer',
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

String _alphabets = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ';
const List<String> _items = const [
  'apple',
  'book',
  'cat',
  'dog',
  'elephant',
  'frog',
  'giraffe',
  'house',
  'icecream',
  'juice',
  'kangaroo',
  'lion',
  'moon',
  'nails',
  'orange',
  'pen',
  'queen',
  'rainbow',
  'sun',
  'tea',
  'umbrella',
  'van',
  'whale',
  'xmas',
  'yoga',
  'zebra',
];

class _Question {
  final String questionLetter;
  final String answer;
  _Question({required this.questionLetter, required this.answer});
  List<String> filterdList() {
    List<String> templist =
        _items.where((element) => element != answer).toList();
    Random random = Random();
    templist.shuffle(random);
    List<String> listThree = templist.take(3).toList();
    listThree.add(answer);
    listThree.shuffle(random);
    return listThree;
  }
}

List<_Question> _questionList = [
  for (int i = 0; i < 26; i++)
    _Question(questionLetter: _alphabets[i], answer: _items[i]),
];
