import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: QuizPage(),
    );
  }
}

class QuizPage extends StatefulWidget {
  @override
  State<QuizPage> createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  int questionNumber = 0;

  List<String> questions = [
    "El man llego a la luna?",
    "Has almorzado matasquita?",
    "tienes pelo?",
    "vamos a caminar?",
  ];
  List<bool> answers =[
    true,
    true,
    false,
    false,
  ];

  List<Icon> scoreKeeper = [ ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff4cc9f0),
      appBar: AppBar(
        backgroundColor: Color(0xff4361ee),
        title: Text("QuizzApp"),
        centerTitle: true,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            flex: 5,
            child: Center(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  questions[questionNumber],
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 22.0,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: MaterialButton(
                onPressed: () {
                  bool correctAnswer = answers[questionNumber];
                  if(correctAnswer== true){
                    scoreKeeper.add(Icon(Icons.check_circle_outline,color: Colors.greenAccent,));

                  }else{
                    scoreKeeper.add(Icon(Icons.close,color: Colors.redAccent,));
                  }

                  questionNumber++;

                  setState(() {


                  });

                  //questionNumber = questionNumber +1;



                },
                child: Text(
                  "Verdadero",
                ),
                color: Colors.yellow,
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: MaterialButton(
                onPressed: () {

                  bool correctAnswer = answers[questionNumber];
                  if(correctAnswer== false){
                    scoreKeeper.add(Icon(Icons.check_circle_outline,color: Colors.greenAccent,));

                  }else{
                    scoreKeeper.add(Icon(Icons.close,color: Colors.redAccent,));
                  }

                  questionNumber++;

                  setState(() {


                  });
                },
                child: Text(
                  "Falso",
                ),
                color: Colors.redAccent,
              ),
            ),
          ),
          Row(
            children: scoreKeeper,
          ),
        ],
      ),
    );
  }
}
