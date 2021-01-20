import 'package:flutter/material.dart';
import 'package:relativandatomic/question_answer/quiz.dart';
import 'package:relativandatomic/question_answer/result.dart';

class QuizScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _QuizScreenState();
  }
}

class _QuizScreenState extends State<QuizScreen> {
  final _questions = const [
    {
      'questionText':
          'Kelemahan teori atom Rutherford terkait dengan kedudukan elektron dalam atom. Jika partikel bermuatan listrik bergeser menurut garis lintasan melengkung, maka akan terjadi … sehingga elektron akan bersatu dengan inti atom.',
      'answers': [
        {'text': 'Gaya sentrifugal melawan gaya tarik elektron', 'score': -2},
        {
          'text':
              'Gaya sentripetal melawan gaya sentrifugal elektron terhadap inti',
          'score': -2
        },
        {
          'text': 'Terjadi perubahan energi kinetik menjadi energi potensial',
          'score': -2
        },
        {
          'text': 'Terjadi perubahan energi kinetik menjadi energi radiasi',
          'score': 10
        },
        {
          'text': 'Terjadi perubahan energi kinetik menjadi energi kimia',
          'score': -2
        },
      ],
    },
    {
      'questionText':
          'Tentukan energi E(infinite) , frekuensi f(infinite) , dan and panjang gelombang l(infinite) transisi tertinggi dari deret Brackett (nf = 4) untuk Be3+ (Z=4)…',
      'answers': [
        {'text': '3.29 x 10^15 /s', 'score': 10},
        {'text': '3.41 x 10^15 /s', 'score': -2},
        {'text': '3.25 x 10^12 /s', 'score': -2},
        {'text': '3.72 x 10^12 /s', 'score': -2},
        {'text': '3.15 x 10^15 /s', 'score': -2},
      ],
    },
    {
      'questionText':
          'Yang membuktikan model atom Thomson tidak tepat adalah percobaan …',
      'answers': [
        {'text': 'Sinar Katode', 'score': -2},
        {'text': 'Hamburan sinar alfa pada lempengan emas tipis', 'score': 10},
        {'text': 'Spektrum atom hidrogen', 'score': -2},
        {'text': 'Tetes minyak milikan', 'score': -2},
        {'text': 'Sinar Kanal', 'score': -2},
      ],
    },
    {
      'questionText':
          'Jika energi transisi deret Paschen atom helium adalah 2.644 eV, tentukan transisinya (nilai n awal dan akhir).....',
      'answers': [
        {'text': '2', 'score': -2},
        {'text': '3', 'score': -2},
        {'text': '4', 'score': 10},
        {'text': '1', 'score': -2},
        {'text': '5', 'score': -2},
      ],
    },
    {
      'questionText':
          'Jika atom He (Z=2) pada keadaan dasar (n = 1) menyerap foton dengan l = 41.3 nm. Apakah elektron akan terionisasi? Tentukan energi dari foton yang diserap lalu bandingkan dengan energi ionisasi keadaan dasar Helium atau E0 dari n=1 ke infinite.',
      'answers': [
        {'text': '54,4 eV', 'score': 10},
        {'text': '55,2 eV', 'score': -2},
        {'text': '54,2 eV', 'score': -2},
        {'text': '60,1 eV', 'score': -2},
        {'text': '38,2 eV', 'score': -2},
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
            'Latihan Soal Atom',
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
