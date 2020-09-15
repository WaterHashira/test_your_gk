import 'package:flutter/material.dart';
import 'questions.dart';
import 'options.dart';
import 'app_brain.dart';

void main() {
  runApp(
    MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        title: Text('GK Test'),
      ),
      body: test_page(),
    ),
  ),
  );
}

class test_page extends StatefulWidget {
  @override
  _test_pageState createState() => _test_pageState();
}

class _test_pageState extends State<test_page> {
  @override
  Widget build(BuildContext context) {

    Brain b1 = Brain();
    //int op_no = 1;
    return SafeArea(
      child: Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        //question text
        Expanded(
          child: Text(b1.getQuestions().question),
        ),
        Expanded(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[

              //1st option
              Expanded(
                child: Card(
                  child: FlatButton(
                    child: Text(b1.getOptions().op1),
                    onPressed: (){
                     setState((){
                       b1.increment();
                     });
                  },
                  ),
                ),
              ),
              //2nd option
              Expanded(
                child: Card(
                  child: FlatButton(
                    child: Text(b1.getOptions().op2),
                    onPressed: (){
                      setState((){
                        b1.increment();
                      });
                    },
                  ),
                ),
              ),
              //3rd option
              Expanded(
                child: Card(
                  child: FlatButton(
                    child: Text(b1.getOptions().op3),
                    onPressed: (){
                      setState((){
                        b1.increment();
                      });
                    },
                  ),
                ),
              ),
             // Expanded(
                //child: Text(''),
              //),
            ],
          ),
        ),
      ],
    ),);
  }
}

