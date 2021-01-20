import 'package:flutter/material.dart';
import 'package:relativandatomic/question_answer/quiz.dart';
import 'package:relativandatomic/question_answer/result.dart';

class QuizScreen2 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _QuizScreenState2();
  }
}

class _QuizScreenState2 extends State<QuizScreen2> {
  final _questions = const [
    {
      'questionText':
          'Anda berada di pesawat ruang angkasa yang bergerak dengan kecepatan 90% kali laju cahaya dan anda bersandar di dinding. Jika sudut anda dengan lantai adalah 60º dan tinggi anda 1.7 m, pada sudut berapa seorang pengamat di bumi melihat anda bersandar dan berapa tinggi anda menurut pengamat di bumi…',
      'answers': [
        {'text': '75 derajat dan 1.53 m', 'score': -2},
        {'text': '77 derajat dan 1.44 m', 'score': -2},
        {'text': '76 derajat dan 1.52 m', 'score': 10},
        {'text': '71 derajat dan 1.11 m', 'score': -2},
        {'text': '76 derajat dan 1.23 m', 'score': -2},
      ],
    },
    {
      'questionText':
          'Berapa kelajuan pesawat ruang angkasa yang bergerak relatif terhadap bumi supaya 2 jam didalam pesawat sama dengan 1 jam di bumi…',
      'answers': [
        {'text': '0.38 c', 'score': -2},
        {'text': '0.40 c', 'score': -2},
        {'text': '0.22 c', 'score': -2},
        {'text': '0.86 c', 'score': 10},
        {'text': '0.68 c', 'score': -2},
      ],
    },
    {
      'questionText':
          'Carilah kecepatan dan momentum sebuah elektron dengan energi kinetik 10.0 Mev! (moc^2=0.511MeV)',
      'answers': [
        {'text': 'V=0,9988 c dan p= 10,5 MeV/c', 'score': 10},
        {'text': 'V=0,9922 c dan p= 10,2 MeV/c', 'score': -2},
        {'text': 'V=0,9783 c dan p= 10,1 MeV/c', 'score': -2},
        {'text': 'V=0,2986 c dan p= 10,9 MeV/c', 'score': -2},
        {'text': 'V=0,2287 c dan p= 10,5 MeV/c', 'score': -2},
      ],
    },
    {
      'questionText':
          'Massa diam sebuah partikel = m0. Massa partikel tersebut saat bergerak dengan kecepatan 0,8 c akan bertambah menjadi...',
      'answers': [
        {'text': '1,25 M0', 'score': -2},
        {'text': '1,42 M0', 'score': -2},
        {'text': '1,52 M0', 'score': -2},
        {'text': '1,67 M0', 'score': 10},
        {'text': '1,92 M0', 'score': -2},
      ],
    },
    {
      'questionText':
          'Benda bergerak dengan laju 0,6 c dengan arah sesuai panjang benda. Bagi pengamat yang diam terlihat panjang benda mengalami penyusutan sebesar...',
      'answers': [
        {
          'text': '20 %',
          'score': 10,
        },
        {'text': '30 %', 'score': -2},
        {'text': '38 %', 'score': -2},
        {'text': '64 %', 'score': -2},
        {'text': '80 %', 'score': -2},
      ],
    },
  ];

  var _questionIndex = 0;
  var _totalScore = 0;

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  void _answerQuestion(int score) {
    _totalScore += score;

    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);
    if (_questionIndex < _questions.length) {
      print('Kami masih Punya beberapa pertanyaan!');
    } else {
      print('Tidak ada Pertanyaan lagi!');
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Color(0xFFFFFFFF),
          leading: IconButton(
            icon: Icon(
              Icons.arrow_back_ios,
              size: 24,
              color: Color(0xFF61688B),
            ),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          title: Text(
            'Latihan Soal Relativitas',
            style: TextStyle(color: Colors.black),
          ),
        ),

        body: Padding(
          padding: const EdgeInsets.all(30.0),
          child: _questionIndex < _questions.length
              ? Quiz(
                  answerQuestion: _answerQuestion,
                  questionIndex: _questionIndex,
                  questions: _questions,
                ) //Quiz
              : Result(_totalScore, _resetQuiz),
        ),
        //Padding
      ), //Scaffold
      debugShowCheckedModeBanner: false,
    ); //MaterialApp
  }
}
