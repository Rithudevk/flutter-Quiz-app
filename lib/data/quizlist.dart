import 'package:quizapp_udemy/model/quizmodel.dart';

const questions=[
  QuizQuistions('what are the main building blocks of ui?', [
    'widgets',
    'components',
    'blocks',
    'functions',

  ]),
  QuizQuistions('How are flutter ui is build?', [
    'By combining widget in a code',
    'by combining widget in a visual editor',
    'By defining widgeyt in config files',
    'by using Xcode for ios android studio for android',

  ]),
  QuizQuistions('what is the  purpose of a statefulwidget?', [
    'update ui as a data change ',
    'update data as a ui change',
    'ignore data change',
    'Render ui as does not depend on data',

  ]),
  QuizQuistions('what happens if you change data in a statefulwidget?', [
    'The ui is not wpdated',
    'The ui is updated',
    'The closet statefulwidget is updated',
    'Any nested sttateful widget are updated',

  ]),
  
];