import 'package:flutter/material.dart';

class SummaryData extends StatelessWidget{
  SummaryData(this.DataSummary,{super.key});

  List<Map<String,Object>> DataSummary;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      child: SingleChildScrollView(
        child: Column(
         children: DataSummary.map((data){
            return Row(
              children: [
                   CircleAvatar(
                  child: Text(((data['Question_index']as int)+1).toString(),
                  style: TextStyle(
                    color: Colors.white
                  )),
                ),
                Expanded(
                  child: Column(
                    children: [
                      Text(data['question']as String),
                      SizedBox(
                        height: 10,
                      ),
                      Text(data['currect_answer']as String),
                      Text(data['useranswer']as String)
                    ],
                  ),
                )
              ],
              
            );
          }).toList()
          
        ),
      ),
    );
  }
}


