
import 'package:flutter/material.dart';


class QuizScreen extends StatelessWidget {
 const  QuizScreen({super.key,required this.answerText,required this.onTap,});
  final String answerText;
   final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(onPressed: onTap, child: Text(answerText),
     style: ElevatedButton.styleFrom(
      backgroundColor: Colors.black,
      
     
     
     ),
      
     );
  
  }
}