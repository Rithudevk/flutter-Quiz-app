import 'package:google_fonts/google_fonts.dart';

import 'package:flutter/material.dart';

import 'package:quizapp_udemy/answers.dart';

import 'package:quizapp_udemy/data/quizlist.dart';







class AnswerButton extends StatefulWidget{
 const AnswerButton({super.key,required this.onSelectedAnswer});   
 final void Function(String answer) onSelectedAnswer; //4
               //5
 

  @override
  State<AnswerButton> createState() => _AnswerButtonState();
}

class _AnswerButtonState extends State<AnswerButton> {

  var currentquizindex=0;

  getFunction(String slelctedAnswer){
    widget.onSelectedAnswer(slelctedAnswer);
  
    setState(() {
      currentquizindex++;
    });
  }
  @override
  Widget build(BuildContext context) {
    final currentAnswer=questions[currentquizindex];
    return Scaffold(
      body:SizedBox(
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment:MainAxisAlignment.center,
            children: [
              Text(currentAnswer.text,
              textAlign: TextAlign.center,
              style: GoogleFonts.lato(fontSize: 20,
                
              )),
              SizedBox(
                height: 30,

              
              ),

             ... currentAnswer.getShuffiledValues().map((answer) =>QuizScreen(answerText: answer, onTap: (){
                  getFunction(answer);
             }
             )
              ),
              
              // QuizScreen(answerText: currentAnswer.answers[0], 
        
              
              // onTap: (){}),
              //  QuizScreen(answerText: currentAnswer.answers[1], 
        
              
              // onTap: (){}),
              //  QuizScreen(answerText: currentAnswer.answers[2], 
        
              
              // onTap: (){}),
              //  QuizScreen(answerText: currentAnswer.answers[3], 
        
              
              // onTap: (){})
        
              
            ],
          ),
        ),
      ),
    )
    
    );
}
}