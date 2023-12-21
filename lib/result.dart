import 'package:flutter/material.dart';
import 'package:quizapp_udemy/data/quizlist.dart';
import 'package:quizapp_udemy/questions_summary.dart';
import 'package:quizapp_udemy/questionscreen.dart';


class ResultScreen extends StatelessWidget {
 ResultScreen({super.key,required this.ChoosenAnswer,required this.onRestart});
   List<String >ChoosenAnswer=[];

   void Function()onRestart;

   
   List<Map<String,Object>> getSummaryData(){
    final List<Map<String,Object>> summary=[];
    for(var i=0;i<ChoosenAnswer.length;i++){
      summary.add({
        'Question_index':i,
        'question':questions[i].text,
        'currect_answer':questions[i].answers[0],
        'useranswer':ChoosenAnswer[i]

      });
     
    }
    return summary;
   }

   

  @override
  Widget build(BuildContext context) {
    
    final getSummarydatafunction=getSummaryData();
    final numTotalQuestion=questions.length;
    final numCurrectQuestions=getSummarydatafunction.where((data){
      return data['useranswer']==data['currect_answer'];
    }).length;

   
    return SizedBox(
      width: double.infinity,
      child: Center(
        child: Container(
          margin: EdgeInsets.all(40),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
             Text(' you answerd $numCurrectQuestions out of $numTotalQuestion questions currectly'),
              SizedBox(
                height: 10,
              ),
              SummaryData(getSummarydatafunction),
              SizedBox(
                height: 10,
              ),
              TextButton(onPressed: onRestart
                  
              , child: Text('Restart Quiz'))
      
            ],
          ),
        ),
      ),
    );
    
  }
}