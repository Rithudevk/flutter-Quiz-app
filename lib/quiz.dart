import 'package:flutter/material.dart';
import 'package:quizapp_udemy/data/quizlist.dart';

import 'package:quizapp_udemy/questionscreen.dart';
import 'package:quizapp_udemy/result.dart';
import 'package:quizapp_udemy/startscreen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
   List<String>slelctedAnswer=[];

  var activeScreen='startscreen';
  
  // @override
  // void initState() {
  //   activeScreen=StratScreen(switchScreen);
  //   super.initState();
  // }
  void switchScreen(){
    setState(() {
      activeScreen='answerbutton';
    });

   }

   void chooseAnswer(String answer){
    slelctedAnswer.add(answer);
    if(slelctedAnswer.length==questions.length){
      setState(() {
        activeScreen='result-screen';
        
       
      });
    }
   }

   restartQuiz(){
    setState(() {
      activeScreen='questionscreen';
      slelctedAnswer=[];
    });
   }

  @override
  Widget build(BuildContext context) {
   Widget screenWidget=StratScreen(switchScreen);
   if(activeScreen=='answerbutton'){
    screenWidget=AnswerButton(onSelectedAnswer: chooseAnswer);
   }


   if(activeScreen=='result-screen'){
    screenWidget= ResultScreen(ChoosenAnswer: slelctedAnswer, onRestart: restartQuiz);
   }

    
    return MaterialApp(
    home: Scaffold(
      body: Container(
        decoration:BoxDecoration(gradient: 
        LinearGradient(colors: [
          Color.fromARGB(255, 78, 13, 151),
          Color.fromARGB(255, 107, 15, 168)
        ],
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
        tileMode: TileMode.clamp

        )),
        
        child: screenWidget,
    ),
  )
    );
  }
}