import 'package:flutter/material.dart';

class QuestionIndex extends StatelessWidget{
   QuestionIndex({super.key,required this.questionIndex,required this.isCorrectAnswer});

   final int questionIndex;
   final  bool isCorrectAnswer;
  @override
  Widget build(BuildContext context) {
    final QuestiobNumber=questionIndex+1;
   return Container(
    width: 30,
    height: 30,
    alignment: Alignment.center,
    decoration: BoxDecoration(
      color: isCorrectAnswer
      ?Color.fromARGB(255, 150, 198, 241)
      :Color.fromARGB(255, 249, 133, 241)

      
    ),
    child: Text(QuestiobNumber.toString()),
   );
    
  }
}