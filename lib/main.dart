

import 'package:flutter/material.dart';
//import 'question_structure.dart';


void main(){
  runApp(
      MaterialApp(

          debugShowCheckedModeBanner: false,
          home : Scaffold (
            body : Dashboard(),

          )
      )
  );
}


class Dashboard extends StatelessWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.redAccent,
          title: Center(child: Text(
            'QUIZ APP',
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
              fontFamily: 'F',
            ),
          )),
        ),

        body: Center(
          child: Column(
            children: [
              SizedBox(
                height: 30,
                width: 80,
              ),

              //Welcome Back User

              Container(
                child: Row(
                  children: [
                    Container(
//            margin: EdgeInsets.all(18),
                      height: 50,
                      width: 150,
                      decoration: BoxDecoration(
                        //  color: Color.fromARGB(120, 128, 127, 227),
                        color: Colors.yellow.withOpacity(1.0),
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(30),
                          bottomRight: Radius.circular(30),
                        ),
                        boxShadow: [BoxShadow(
                          color: Colors.black26,
                          spreadRadius: 3,
                          blurRadius: 3,
                          offset: Offset(3,3),
                        )],

                      ),
                      child: Row(
                        children: [
                          Icon(
                            Icons.account_circle_outlined,
                            color: Colors.purple,
                            size: 26,
                          ),
                          Text(' Weclome Back ',
                            style: TextStyle(
                                fontFamily: 'D',
                                fontWeight: FontWeight.bold,
                                fontSize: 17
                            ),),
                        ],
                      ),

                    ),
                    SizedBox(height: 30,),

                  ],
                ),
              ),



              SizedBox(height: 52.7,),

              //Curve_Dashboard.......
              Container(
                  height: 560,
                  width: 420,
                  decoration: BoxDecoration(

                    //color: Colors.cyanAccent,
                    gradient: LinearGradient(
                        begin: Alignment.bottomLeft,
                        end: Alignment.topRight,
                        colors: [
                          //Colors.amberAccent,
                          Colors.white70,
                          Colors.yellow,
                        ]
                    ),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(50),
                      topRight: Radius.circular(50),
                    ),
                    boxShadow: [BoxShadow(
                      color: Colors.black26,
                      blurRadius: 4,
                      spreadRadius: 4,

                    )],

                  ),

                  //Curve_Dasboard all items display here.....
                  child : Center(
                    child: Column(
                      children: [
                        //Circle Avatar ....
                        SizedBox(height: 30,),
                        CircleAvatar(
                          radius: 50,
                          backgroundColor: Colors.white70,
                          child: Icon(
                            Icons.book_online_rounded,
                            size: 50,
                          ),
                        ),
                        SizedBox(height: 30,),


                        //1st Row  ( Start_quiz   & Instruction )
                        Container(
                          child: Row(
                            children: [
                              //Start quiz container
                              SizedBox(width: 30,),
                              Container(
                                height: 140,
                                width: 129,
                                decoration: BoxDecoration(
                                  color: Colors.cyanAccent,
                                  borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(20),
                                    topLeft: Radius.circular(20),
                                    bottomLeft: Radius.circular(20),
                                    bottomRight: Radius.circular(20),
                                  ),
                                  boxShadow: [BoxShadow(
                                    color: Colors.black26,
                                    spreadRadius: 3,
                                    blurRadius: 3,
                                    offset: Offset(3,3),
                                  )],


                                ),
                                //Inside contianer
                                child: Column(
                                  children: [
                                    SizedBox(height: 10,),
                                    CircleAvatar(radius: 30,
                                      backgroundColor: Colors.transparent,
                                      child: Icon(
                                        Icons.timer,
                                        color: Colors.black26,
                                        size: 50,
                                      ),
                                    ),
                                    SizedBox(height: 5,),
                                    Divider(
                                      thickness: 1,
                                      indent: 20,
                                      endIndent: 20,
                                      color: Colors.black26,



                                    ),
                                    MaterialButton(onPressed: (){
                                      Navigator.push(context, MaterialPageRoute(builder: (context)=>  MainPage()));

                                    },
                                      child: Text('Start Quiz',
                                        style: TextStyle(
                                          fontFamily: 'D',
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),


                                  ],
                                ),
                              ),

                              //Instruction COntainer
                              SizedBox(width: 60,),
                              Container(
                                height: 140,
                                width: 129,
                                decoration: BoxDecoration(
                                  // color: Colors.cyanAccent.shade100,
                                  color: Colors.lightGreenAccent,
                                  borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(20),
                                    topLeft: Radius.circular(20),
                                    bottomLeft: Radius.circular(20),
                                    bottomRight: Radius.circular(20),
                                  ),
                                  boxShadow: [BoxShadow(
                                    color: Colors.black26,
                                    spreadRadius: 3,
                                    blurRadius: 3,
                                    offset: Offset(3,3),
                                  )],


                                ),
                                //Inside contianer
                                child: Column(
                                  children: [
                                    SizedBox(height: 10,),
                                    CircleAvatar(radius: 30,
                                      backgroundColor: Colors.transparent,
                                      child: Icon(
                                        Icons.integration_instructions_outlined,
                                        color: Colors.black26,
                                        size: 50,
                                      ),
                                    ),
                                    SizedBox(height: 5,),
                                    Divider(
                                      thickness: 1,
                                      indent: 20,
                                      endIndent: 20,
                                      color: Colors.black26,



                                    ),
                                    MaterialButton(onPressed: (){
                                      // Navigator.push(context, MaterialPageRoute(builder: (context)=>  MainPage()));

                                    },
                                      child: Text('Instruction',
                                        style: TextStyle(
                                          fontFamily: 'D',
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),


                                  ],
                                ),
                              ),


                            ],
                          ),
                        ),
                        SizedBox(height: 40,),

                        //2nd Row (About_US  &  Close)
                        Container(
                          child: Row(
                            children: [
                              //About us container
                              SizedBox(width: 30,),
                              Container(
                                height: 140,
                                width: 129,
                                decoration: BoxDecoration(
                                  color: Colors.limeAccent,
                                  borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(20),
                                    topLeft: Radius.circular(20),
                                    bottomLeft: Radius.circular(20),
                                    bottomRight: Radius.circular(20),
                                  ),
                                  boxShadow: [BoxShadow(
                                    color: Colors.black26,
                                    spreadRadius: 3,
                                    blurRadius: 3,
                                    offset: Offset(3,3),
                                  )],


                                ),
                                //Inside contianer
                                child: Column(
                                  children: [
                                    SizedBox(height: 10,),
                                    CircleAvatar(radius: 30,
                                      backgroundColor: Colors.transparent,
                                      child: Icon(
                                        Icons.account_box_outlined,
                                        color: Colors.black26,
                                        size: 50,
                                      ),
                                    ),
                                    SizedBox(height: 5,),
                                    Divider(
                                      thickness: 1,
                                      indent: 20,
                                      endIndent: 20,
                                      color: Colors.black26,



                                    ),
                                    MaterialButton(onPressed: (){
                                      // Navigator.push(context, MaterialPageRoute(builder: (context)=>  MainPage()));

                                    },
                                      child: Text(' About Us',
                                        style: TextStyle(
                                          fontFamily: 'D',
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),


                                  ],
                                ),
                              ),

                              //Close COntainer
                              SizedBox(width: 60,),
                              Container(
                                height: 140,
                                width: 129,
                                decoration: BoxDecoration(
                                  // color: Colors.cyanAccent.shade100,
                                  color: Colors.pink.shade100,
                                  borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(20),
                                    topLeft: Radius.circular(20),
                                    bottomLeft: Radius.circular(20),
                                    bottomRight: Radius.circular(20),
                                  ),
                                  boxShadow: [BoxShadow(
                                    color: Colors.black26,
                                    spreadRadius: 3,
                                    blurRadius: 3,
                                    offset: Offset(3,3),
                                  )],


                                ),
                                //Inside contianer
                                child: Column(
                                  children: [
                                    SizedBox(height: 10,),
                                    CircleAvatar(radius: 30,
                                      backgroundColor: Colors.transparent,
                                      child: Icon(
                                        Icons.close,
                                        color: Colors.black26,
                                        size: 50,
                                      ),
                                    ),
                                    SizedBox(height: 5,),
                                    Divider(
                                      thickness: 1,
                                      indent: 20,
                                      endIndent: 20,
                                      color: Colors.black26,



                                    ),
                                    MaterialButton(onPressed: (){
                                      // Navigator.push(context, MaterialPageRoute(builder: (context)=>  MainPage()));

                                    },
                                      child: Text('Close App',
                                        style: TextStyle(
                                          fontFamily: 'D',
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),


                                  ],
                                ),
                              ),


                            ],
                          ),
                        ),

                        //Developer Info
                        SizedBox(height: 60,),
                        Text('VERSION 1.0',
                          style: TextStyle(
                            fontSize: 10,
                            letterSpacing: 3,
                            fontFamily: 'D',
                          ),
                        )



                      ],
                    ),
                  )


              )




            ],
          ),
        ),
      ),
    );

  }
}






//Quiz_Main_Page............................
class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => MainPageState();
}

int correct_ans = 0 ;

class MainPageState extends State<MainPage> {


  resources resource = resources();


  int num = 0 ;
  List<Icon> icons  =[];
  @override


  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.redAccent,
          title: Center(child: Text(
            'QUIZ APP',
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
              fontFamily: 'F',
            ),
          )),
        ),
        body: SafeArea(
          child: Center(
            child: Column(
              children: [


                //Gap between AppBar and question_container
                SizedBox(
                  height: 90,
                ),

                //QUESTION CONTAINER START HERE


                Container(
                  height: 200,
                  width: 300,

                  decoration: BoxDecoration(

                      gradient: LinearGradient(
                          end: Alignment.bottomLeft,
                          begin : Alignment.topRight,
                          colors: [
                            //                   Colors.yellowAccent.shade200,
                            Colors.blueAccent.withOpacity(0.5),
                            Colors.white,
                            Colors.white70,
                            Colors.red.withOpacity(0.5)
                          ]
                      ),

                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30),
                        bottomLeft: Radius.circular(30),
                        bottomRight: Radius.circular(30),
                      ),

                      boxShadow: [BoxShadow(
                        color: Colors.black.withOpacity(0.2),
                        blurRadius: 4,
                        spreadRadius: 4,
                        offset: Offset(3,3),
                      ),]
                  ),



                  // Center Container for diaplaying question

                  child: Center(
                      child : Container(
                        height: 180,
                        width: 250,
                        color: Colors.transparent,
                        child: Text(

                          resource.get_question_Text(num),


                          //resource.get_question_Text(increment_num),
                          style: TextStyle(
                            color: Colors.black.withOpacity(0.9),
                            fontFamily: 'D',
                            fontWeight: FontWeight.bold,
                            fontSize: 23,
                            letterSpacing: 4,
                          ),
                        ),
                      )
                  ),

                ),

                //GAP Between question_container & option ROW 1
                SizedBox(
                  height: 70,
                ),


                //Option Row 1


                Container(
                    height: 80,
                    width: 420,
                    color: Colors.transparent,
                    child: Row(


                      //row for option alignment in a ROW


                      children: [

                        SizedBox(
                          width: 10,
                        ),
                        MaterialButton(
                            splashColor: Colors.transparent,
                            highlightColor: Colors.transparent,

                            onPressed: () {
                              setState(() {

                                if(resource.opt_A_Text(num) == resource.get_correct_answer_Text(num)){
                                  if(num < resource._questions_list.length-1){
                                    print('FINE');
                                    num++;
                                    correct_ans++;

                                  }
                                  else{
                                    print('OUT OF RANGE HERE .......');



                                    Navigator.push(context, MaterialPageRoute(builder: (context)=> new results()));

                                  }



                                }

                                else{
                                  if(num < resource._questions_list.length-1){
                                    num++;
                                  }
                                  else{
                                    Navigator.push(context, MaterialPageRoute(builder: (context)=> new results()));

                                  }
                                }



                              });

                            },
                            child : Container(
                              height: 90,
                              width: 120,

                              decoration: BoxDecoration(

                                  gradient: LinearGradient(
                                      end: Alignment.bottomLeft,
                                      begin : Alignment.topRight,
                                      colors: [
                                        Colors.greenAccent.shade200,
                                        Colors.yellowAccent.shade100,
                                      ]
                                  ),

                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(30),
                                    topRight: Radius.circular(30),
                                    bottomLeft: Radius.circular(30),
                                    bottomRight: Radius.circular(30),
                                  ),

                                  boxShadow: [BoxShadow(
                                    color: Colors.black.withOpacity(0.2),
                                    blurRadius: 4,
                                    spreadRadius: 4,
                                    offset: Offset(3,3),
                                  ),]
                              ),

                              child: Center(
                                child: Text(
                                  resource.opt_A_Text(num),
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontFamily: 'H',
                                    color: Colors.black,
                                  ),
                                ),
                              ),

                            )
                        ),

                        SizedBox(
                          width: 60,
                        ),
                        MaterialButton(
                            splashColor: Colors.transparent,
                            highlightColor: Colors.transparent,

                            onPressed: () {
                              setState(() {

                                if(resource.opt_B_Text(num) == resource.get_correct_answer_Text(num)){
                                  if(num < resource._questions_list.length-1){
                                    print('FINE');
                                    num++;
                                    correct_ans++;

                                  }
                                  else{
                                    print('OUT OF RANGE HERE .......');
                                    Navigator.push(context, MaterialPageRoute(builder: (context)=> new results()));
                                  }



                                }

                                else{
                                  if(num < resource._questions_list.length-1){
                                    num++;
                                  }
                                  else{
                                    Navigator.push(context, MaterialPageRoute(builder: (context)=> new results()));
                                  }
                                }



                              });
                            },
                            child : Container(
                              height: 90,
                              width: 120,

                              decoration: BoxDecoration(

                                  gradient: LinearGradient(
                                      end: Alignment.bottomLeft,
                                      begin : Alignment.topRight,
                                      colors: [
                                        Colors.greenAccent.shade200,
                                        Colors.yellowAccent.shade100,
                                      ]
                                  ),

                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(30),
                                    topRight: Radius.circular(30),
                                    bottomLeft: Radius.circular(30),
                                    bottomRight: Radius.circular(30),
                                  ),

                                  boxShadow: [BoxShadow(
                                    color: Colors.black.withOpacity(0.2),
                                    blurRadius: 4,
                                    spreadRadius: 4,
                                    offset: Offset(3,3),
                                  ),]
                              ),

                              child: Center(
                                child: Text(
                                  resource.opt_B_Text(num),
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontFamily: 'H',
                                    color: Colors.black,
                                  ),
                                ),
                              ),

                            )
                        ),


                      ],
                    )

                ),


                //GAP Between option ROW 1 & option ROW 2
                SizedBox(
                  height: 70,
                ),


                //Option Row 2


                Container(
                    height: 80,
                    width: 420,
                    color: Colors.transparent,
                    child: Row(


                      //row for option alignment in a ROW


                      children: [

                        SizedBox(
                          width: 10,
                        ),
                        MaterialButton(
                            splashColor: Colors.transparent,
                            highlightColor: Colors.transparent,

                            onPressed: () {
                              setState(() {

                                if(resource.opt_C_Text(num) == resource.get_correct_answer_Text(num)){
                                  if(num < resource._questions_list.length-1){
                                    print('FINE');
                                    num++;
                                    correct_ans++;

                                  }
                                  else{
                                    print('OUT OF RANGE HERE .......');
                                    Navigator.push(context, MaterialPageRoute(builder: (context)=> new results()));
                                  }



                                }

                                else{

                                  if(num < resource._questions_list.length-1){
                                    num++;
                                  }
                                  else{
                                    Navigator.push(context, MaterialPageRoute(builder: (context)=> new results()));
                                  }

                                }



                              });
                            },
                            child : Container(
                              height: 90,
                              width: 120,

                              decoration: BoxDecoration(

                                  gradient: LinearGradient(
                                      end: Alignment.bottomLeft,
                                      begin : Alignment.topRight,
                                      colors: [
                                        Colors.greenAccent.shade200,
                                        Colors.yellowAccent.shade100,
                                      ]
                                  ),

                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(30),
                                    topRight: Radius.circular(30),
                                    bottomLeft: Radius.circular(30),
                                    bottomRight: Radius.circular(30),
                                  ),

                                  boxShadow: [BoxShadow(
                                    color: Colors.black.withOpacity(0.2),
                                    blurRadius: 4,
                                    spreadRadius: 4,
                                    offset: Offset(3,3),
                                  ),]
                              ),

                              child: Center(
                                child: Text(
                                  resource.opt_C_Text(num),
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontFamily: 'H',
                                    color: Colors.black,
                                  ),
                                ),
                              ),

                            )
                        ),

                        SizedBox(
                          width: 60,
                        ),
                        MaterialButton(
                            splashColor: Colors.transparent,
                            highlightColor: Colors.transparent,

                            onPressed: () {
                              setState(() {

                                if(resource.opt_D_Text(num) == resource.get_correct_answer_Text(num)){
                                  if(num < resource._questions_list.length-1){
                                    print('FINE');
                                    num++;
                                    correct_ans++;

                                  }
                                  else{
                                    print('OUT OF RANGE HERE .......');
                                    Navigator.push(context, MaterialPageRoute(builder: (context)=> new results()));
                                  }



                                }

                                else {
                                  if(num < resource._questions_list.length-1){
                                    num++;
                                  }
                                  else{
                                    Navigator.push(context, MaterialPageRoute(builder: (context)=> new results()));
                                  }

                                }




                              });
                            },
                            child : Container(
                              height: 90,
                              width: 120,

                              decoration: BoxDecoration(

                                  gradient: LinearGradient(
                                      end: Alignment.bottomLeft,
                                      begin : Alignment.topRight,
                                      colors: [
                                        Colors.greenAccent.shade200,
                                        Colors.yellowAccent.shade100,
                                      ]
                                  ),

                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(30),
                                    topRight: Radius.circular(30),
                                    bottomLeft: Radius.circular(30),
                                    bottomRight: Radius.circular(30),
                                  ),

                                  boxShadow: [BoxShadow(
                                    color: Colors.black.withOpacity(0.2),
                                    blurRadius: 4,
                                    spreadRadius: 4,
                                    offset: Offset(3,3),
                                  ),]
                              ),

                              child: Center(
                                child: Text(
                                  resource.opt_D_Text(num),
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontFamily: 'H',
                                    color: Colors.black,
                                  ),
                                ),
                              ),

                            )
                        ),

                      ],
                    )

                ),

                SizedBox(height: 30,),




              ],

            ),

          ),
        ),
      ),
    );

  }

}

//Quiz_Main_Page End here ....................


//All Question , Answers , Options here

class Question_Structure{
  String question_Text ;
  String correct_answer_Text;
  Question_Structure(this.question_Text , this.correct_answer_Text);
}

class resources {






  //Result result = Result();
  List<Question_Structure> _questions_list = [

    Question_Structure('THE Antartica Lies At ?', 'SOUTH POLE'),
    Question_Structure('Supreme Commander of all forces is ?', 'PRESIDENT'),
    Question_Structure('Who was Muhammad Ali Bogra', 'PM'),
    Question_Structure('Amount Of ZAKAT cant be used in ?' , 'MOSQUE'),
    Question_Structure('I am Fed Up ____ his Behaviour?' , 'WITH'),
    Question_Structure('Pakistan is an ____ country?', 'DEMOCRATIC'),
    Question_Structure('ISLAM Is Baseb On how many pillars', '5'),
    Question_Structure('Abraham Lincoln belongs to ', 'USA'),



    //LEAVE THIS LAST QUESTION
    //SCORE FOR LAST QUESTION WONT BE COUNTED
    Question_Structure('The Air-Bender was written By : ', 'XYZ'),


  ];


  List<String> _option_A_list = [
    'NORTH POLE','PM','CM','JOURNEY','ON','DEMOCRATIC','6','USA',
    'WILLAM\n\bSMITH'
  ];

  List<String> _option_B_list = [
    'EAST POLE','PRESIDENT','GOVERNER','MOSQUE','TO','REPUBLIC','5','BRITIAN',
    '  SMULTH\n\bKNURK'
  ];

  List<String> _option_C_list = [
    'SOUTH POLE','CM','LEADER','BUYING ITEMS','WITH','SOCIALILST','4','ICELAND',
    'SAMEUL\n\bKINGS'

  ];

  List<String> _option_D_list = [
    'None','GENERAL','PM','None','None','SOVIET','8','NONE',
    'KERN LIN'
  ];




  String get_question_Text(int i){
    return _questions_list[i].question_Text;
  }

  String get_correct_answer_Text(int i){
    return _questions_list[i].correct_answer_Text;
  }


  // options functions

  String opt_A_Text(int i){
    return _option_A_list[i];
  }


  String opt_B_Text(int i){
    return _option_B_list[i];
  }

  String opt_C_Text(int i){
    return _option_C_list[i];
  }

  String opt_D_Text(int i){
    return _option_D_list[i];
  }














}

//Result Board display
class results extends StatefulWidget {
  const results({Key? key}) : super(key: key);

  @override
  State<results> createState() => _resultsState();
}

class _resultsState extends State<results> {

  int total = resources()._questions_list.length-1;
  int wrong = (resources()._questions_list.length-1) - correct_ans;
  int score = correct_ans * 2;

  void show_dialog(){
    showDialog(context: context, builder: (context){
      return AlertDialog(
        title : Text('QuizApp'),
        backgroundColor: Colors.white,
        content: Text('You Will be directed to Dashboard\nDo You Wish To Continue?'),
        actions: [
          MaterialButton(onPressed: (){
            setState(() {
              Navigator.pop(context);
            });
          },
            child: Text('Cancel'),

          ),
          MaterialButton(onPressed: (){
            setState(() {
              Navigator.push(context, MaterialPageRoute(builder: (context)=>  Dashboard()));
              correct_ans = 0 ;
              wrong = 0;
              score = 0 ;

            });
          },
            child: Text('OK'),

          ),
        ],
      );
    });
  }

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          backgroundColor: Colors.white,
          appBar : AppBar(
              backgroundColor: Colors.pink,
              title : Center(
                  child : Text(
                      'RESULTS',
                      style : TextStyle(
                        fontFamily: 'D',
                        fontSize: 28,
                        letterSpacing: 3,
                      )
                  )
              )

          ),
          body : SafeArea(
            child: Center(
              child: Column(
                children: [
                  SizedBox(height: 30,),
                  Container(


                      child : Row(children: [
                        Container(
                            height: 45,
                            width: 140,


                            decoration: BoxDecoration(
                              //color: Colors.blueAccent,
                                gradient : LinearGradient(
                                    begin: Alignment.topRight,
                                    end: Alignment.bottomLeft,
                                    colors: [
                                      Colors.cyanAccent,
                                      Colors.amberAccent
                                    ]
                                ),
                                borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(30),
                                  bottomRight: Radius.circular(30),
                                ),
                                boxShadow: [BoxShadow(
                                  color: Colors.black.withOpacity(0.3),
                                  spreadRadius: 3,
                                  blurRadius: 3,
                                  offset: Offset(2,3),

                                ),]


                            ),
                            child: Row(
                              children: [
                                Icon(
                                  Icons.arrow_back,
                                  color: Colors.pink,
                                  size: 20,
                                ),

                                MaterialButton(onPressed: show_dialog,

                                  child : Text('DASHBOARD',
                                      style : TextStyle(
                                          fontSize: 13,
                                          fontWeight: FontWeight.bold,
                                          fontFamily: 'H',
                                          color: Colors.white
                                      )),
                                )


                              ],
                            )

                        )
                      ],)
                  ),
                  SizedBox(height: 40,),
                  Text(
                      'Result Summary',
                      style : TextStyle(
                        fontSize:30,
                        fontFamily: 'D',
                        fontWeight: FontWeight.bold,
                      )
                  ),

                  Divider(
                    height: 30,
                    color: Colors.cyanAccent,
                    thickness: 1,
                    indent: 60,
                    endIndent: 60,
                  ),


                  //ROW FOR  Total question and  wrong answers......

                  Container(

                      child : Row(
                        children: [

                          // total question container
                          Container(
                              margin: EdgeInsets.all(20),
                              height: 170,
                              width: 130,



                              decoration: BoxDecoration(

                                gradient: LinearGradient(
                                    begin: Alignment.topRight,
                                    end: Alignment.bottomLeft,
                                    colors: [
                                      Colors.orangeAccent,
                                      Colors.white,
                                    ]
                                ),
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(20),
                                  topRight: Radius.circular(20),
                                  bottomLeft: Radius.circular(20),
                                  bottomRight: Radius.circular(20),
                                ),
                                boxShadow: [BoxShadow(
                                  color: Colors.black26,
                                  spreadRadius: 5,
                                  blurRadius: 5,
                                  offset: Offset(3,3),
                                )],


                              ),
                              child : Column(
                                children: [
                                  SizedBox(
                                    height: 16,
                                  ),
                                  CircleAvatar(
                                    radius: 30,
                                    //backgroundColor: Colors.cyanAccent.shade100,
                                    // backgroundColor: Colors.yellowAccent.withOpacity(0.4),
                                    backgroundColor: Colors.white.withOpacity(0.3),
                                    child: Text(
                                      '$total',
                                      style: TextStyle(
                                        fontFamily: 'F',
                                        fontSize: 35,
                                        color: Colors.pink,
                                      ),

                                    ),
                                  ),
                                  SizedBox(height: 13,),
                                  Divider(
                                    thickness: 0,
                                    color: Colors.black,
                                    indent: 15,
                                    endIndent: 15,
                                  ),
                                  SizedBox(height: 10,),
                                  Text(
                                    '    TOTAL \nQUESTIONS',
                                    style: TextStyle(
                                      fontSize: 16,
                                      letterSpacing: 3,
                                    ),
                                  )
                                ],
                              )




                          ),
                          SizedBox(width: 45,),

                          //wrong answer container

                          Container(
                              margin: EdgeInsets.all(20),
                              height: 170,
                              width: 130,



                              decoration: BoxDecoration(

                                gradient: LinearGradient(
                                    begin: Alignment.topRight,
                                    end: Alignment.bottomLeft,
                                    colors: [
                                      Colors.red,
                                      Colors.white,
                                    ]
                                ),
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(20),
                                  topRight: Radius.circular(20),
                                  bottomLeft: Radius.circular(20),
                                  bottomRight: Radius.circular(20),
                                ),
                                boxShadow: [BoxShadow(
                                  color: Colors.black26,
                                  spreadRadius: 5,
                                  blurRadius: 5,
                                  offset: Offset(3,3),
                                )],


                              ),
                              child : Column(
                                children: [
                                  SizedBox(
                                    height: 16,
                                  ),
                                  CircleAvatar(
                                    radius: 30,
                                    backgroundColor: Colors.white.withOpacity(0.3),
                                    child: Text(
                                      '$wrong',
                                      style: TextStyle(
                                        fontFamily: 'F',
                                        fontSize: 35,
                                        color: Colors.pink,
                                      ),

                                    ),
                                  ),
                                  SizedBox(height: 13,),
                                  Divider(
                                    thickness: 0,
                                    color: Colors.black,
                                    indent: 15,
                                    endIndent: 15,
                                  ),
                                  SizedBox(height: 10,),
                                  Text(
                                    '  WRONG \nANSWERS',
                                    style: TextStyle(
                                      fontSize: 16,
                                      letterSpacing: 3,
                                    ),
                                  )
                                ],
                              )




                          ),
                        ],
                      )
                  ),
                  SizedBox(height: 30,),

                  //ROW for Correct Answers & Your Score

                  Container(

                      child : Row(
                        children: [

                          // correct answers container
                          Container(
                              margin: EdgeInsets.all(20),
                              height: 170,
                              width: 130,



                              decoration: BoxDecoration(

                                gradient: LinearGradient(
                                    begin: Alignment.topRight,
                                    end: Alignment.bottomLeft,
                                    colors: [
                                      Colors.lightGreenAccent,
                                      Colors.white,
                                    ]
                                ),
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(20),
                                  topRight: Radius.circular(20),
                                  bottomLeft: Radius.circular(20),
                                  bottomRight: Radius.circular(20),
                                ),
                                boxShadow: [BoxShadow(
                                  color: Colors.black26,
                                  spreadRadius: 5,
                                  blurRadius: 5,
                                  offset: Offset(3,3),
                                )],


                              ),
                              child : Column(
                                children: [
                                  SizedBox(
                                    height: 16,
                                  ),
                                  CircleAvatar(
                                    radius: 30,
                                    backgroundColor: Colors.white.withOpacity(0.3),
                                    child: Text(
                                      '$correct_ans',
                                      style: TextStyle(
                                        fontFamily: 'F',
                                        fontSize: 35,
                                        color: Colors.pink,
                                      ),

                                    ),
                                  ),
                                  SizedBox(height: 13,),
                                  Divider(
                                    thickness: 0,
                                    color: Colors.black,
                                    indent: 15,
                                    endIndent: 15,
                                  ),
                                  SizedBox(height: 10,),
                                  Text(
                                    ' CORRECT \nANSWERS',
                                    style: TextStyle(
                                      fontSize: 16,
                                      letterSpacing: 3,
                                    ),
                                  )
                                ],
                              )




                          ),
                          SizedBox(width: 45,),

                          //Your Score container

                          Container(
                              margin: EdgeInsets.all(20),
                              height: 170,
                              width: 130,



                              decoration: BoxDecoration(

                                gradient: LinearGradient(
                                    begin: Alignment.topRight,
                                    end: Alignment.bottomLeft,
                                    colors: [
                                      Colors.yellowAccent.shade200,
                                      Colors.lightGreenAccent.shade200,
                                    ]
                                ),
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(20),
                                  topRight: Radius.circular(20),
                                  bottomLeft: Radius.circular(20),
                                  bottomRight: Radius.circular(20),
                                ),
                                boxShadow: [BoxShadow(
                                  color: Colors.black26,
                                  spreadRadius: 5,
                                  blurRadius: 5,
                                  offset: Offset(3,3),
                                )],


                              ),
                              child : Column(
                                children: [
                                  SizedBox(
                                    height: 16,
                                  ),
                                  CircleAvatar(
                                    radius: 30,
                                    backgroundColor: Colors.blue.withOpacity(0.2),
                                    child: Text(
                                      '$score',
                                      style: TextStyle(
                                        fontFamily: 'F',
                                        fontSize: 35,
                                        color: Colors.pink,
                                      ),

                                    ),
                                  ),
                                  SizedBox(height: 13,),
                                  Divider(
                                    thickness: 0,
                                    color: Colors.black,
                                    indent: 15,
                                    endIndent: 15,
                                  ),
                                  SizedBox(height: 10,),
                                  Text(
                                    ' YOUR \nSCORE',
                                    style: TextStyle(
                                      fontSize: 16,
                                      letterSpacing: 3,
                                    ),
                                  )
                                ],
                              )




                          ),
                        ],
                      )
                  ),

                  SizedBox(height: 30,),
                  Text('DEVELOPER  : HAMZA JAVAID',
                    style: TextStyle(
                      fontSize: 10,
                      letterSpacing: 8,
                    ),
                  ),






                ],
              ),
            ),
          )
      ),
    );
  }
}


//Result Board display end here ................









