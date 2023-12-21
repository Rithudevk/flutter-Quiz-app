class QuizQuistions{


 final String text;
 final  List<String>answers;
  const QuizQuistions(this.text,this.answers);

   getShuffiledValues(){

      final  shuffuledList=List.of(answers);
      shuffuledList.shuffle();
      return shuffuledList;


  }

}
