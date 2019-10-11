import 'package:flutter/material.dart';
import 'question.dart';

void main() => runApp(Quizzler());

class Quizzler extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey.shade900,
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.0),
            child: QuizPage(),
          ),
        ),
      ),
    );
  }
}

class QuizPage extends StatefulWidget {
  @override
  _QuizPageState createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  
  List<Icon>scorekeeper =[
    
           

  ];
  
 
  Question q1 = Question(q: 'You can lead cow downstairs but not upstairs',a:false);

  List<Question> question=[Question(q: 'You can lead cow downstairs but not upstairs',a:false),
                           Question(q: 'Approx 1/4th of the human bones are in the bones',a:true),
                           Question(q:  'a slugs brain is blue',a:true)               
  
  
  ];
  int questionnumber=0;
  
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Expanded(
          flex: 5,
          child: Padding(
            padding: EdgeInsets.all(10.0),
            child: Center(
              child: Text(
                question[questionnumber].questionText,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 25.0,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.all(15.0),
            child: FlatButton(
              textColor: Colors.white,
              color: Colors.green,
              child: Text(
                'True',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20.0,
                ),
              ),
              
              onPressed: () {
                 bool answer = question[questionnumber].questionAnswer;
                 if(answer==true){
                   print("you got it right");
                 }
                 else{
                   print("you got it wrong");
                 }
                 setState(() {

                   questionnumber++;
                    scorekeeper.add(
                      Icon(Icons.check,
                      color: Colors.green.shade500,)

                  );
                    
                  }
                  );
                
              },
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.all(15.0),
            child: FlatButton(
              color: Colors.red,
              child: Text(
                'False',
                style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.white,
                ),
              ),
             
                onPressed: () {
                   bool answer = correctanswers[questionnumber];
                 if(answer==false){
                   print("you got it right");
                 }
                 else{
                   print("you got it wrong");
                 }
                 
                   setState(() {
                    scorekeeper.add(
                      Icon(Icons.close,
                      color: Colors.red.shade500,)

                    );
                    
                  });
              

             }
             
            ),
          ),
        ),
        Row(children: scorekeeper
          
        )
      ],
    );
  }
}

