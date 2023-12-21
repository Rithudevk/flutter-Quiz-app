import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class StratScreen extends StatelessWidget{
const StratScreen( this.startQuiz,{super.key});
   final void Function() startQuiz;
  @override
  Widget build(BuildContext context) {
             return Center
             (child: Opacity(
              opacity: 0.6,
               child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                 children: [
                  Image.asset('Assets/images/quiz-logo.png',
                  width: 300,
                  ),
                  SizedBox(
                    height: 30,
                  ),
                   Text('Learn Flutter The Fun Way!',
                   style: GoogleFonts.lato(
                    fontSize: 20,
                    color: Colors.white
                   )
                  ,),
                  TextButton.icon(onPressed: startQuiz,
                   icon: Icon(Icons.arrow_circle_right),
                    label: Text('Start Quiz'),

                   style: ButtonStyle(
                    foregroundColor:MaterialStatePropertyAll(Colors.white)
                   ),)
                 ],
               ),
             ));
    
  }
}