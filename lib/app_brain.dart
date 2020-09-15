import 'questions.dart';
import 'options.dart';

class Brain{
  int _ques_no = 0;

  List<Ques> _questionBank = [
    Ques('Which of the following is a non metal that remains liquid at room temperature?' , 'Bromine'),
    Ques('Brass gets discoloured in air because of the presence of which of the following gases in air?' , 'Hydrogen sulphide'),
    Ques('Chlorophyll is a naturally occurring chelate compound in which central metal is', 'Magnesium'),
    Ques('Which of the following is used in pencils?' , 'Graphite'),
    Ques('Which of the following metals forms an amalgam with other metals?' , 'Mercury'),
  ];

  List<Option> _optionBank = [
    Option('Phosphorous' , 'Bromine' , 'Chlorine'),
    Option('Oxygen' , 'Hydrogen sulphide' , 'Carbon dioxide'),
    Option('copper' , 'magnesium' , 'iron'),
    Option('Graphite' , 'Silicon' , 'Charcoal'),
    Option('Tin' , 'Lead' , 'Mercury'),
  ];

  Option getOptions(){
    return _optionBank[_ques_no];
  }

  Ques getQuestions(){
    return _questionBank[_ques_no];
  }
  void increment(){
    _ques_no++;
  }
}