import 'package:flutter/material.dart';
const  Colour = Color(0xff4E5850);
const  ColourP = Colors.red;
const Colourtwo = Colors.yellow;


void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MainPage(),
    );
  }
}
class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  Color Test = Colour;
  Color Play = Colour;
  Color Test2 = Colour;
  Color Test3 = Colour;
  Color Test4 = Colour;
  Color Test5 = Colour;
  Color ColourP = Colors.red;

  void Changer(int codenumb){
    if(codenumb==1)
      if (Play== Colour && Test == Colour) {
        Test = Colour;

      }
    else if(Play == ColourP){
      Test = Colourtwo;
      Test2 = Colour;
      Test3 = Colour;
      Test4 = Colour;

      }
    else{
      Test = Colour;
      }
  }



  void Changer2(int codenumb){
    if(codenumb==1)
      if (Play== Colour && Test2 == Colour) {
        Test2 = Colour;
      }
      else if(Play == ColourP){
        Test = Colour;
        Test2 = Colourtwo;
        Test3 = Colour;
        Test4 = Colour;


      }
      else{
        Test2 = Colour;
      }
  }

  void Changer3(int codenumb){
    if(codenumb==1)
      if (Play== Colour && Test3 == Colour) {
        Test3 = Colour;

      }
      else if(Play == ColourP){
        Test = Colour;
        Test2 = Colour;
        Test3 = Colourtwo;
        Test4 = Colour;

      }
      else{
        Test3 = Colour;
      }
  }

  void ChangerPlay (int codenumb){
    if(codenumb==2)
    if(Play==Colour && Test == Colour){
     Play =ColourP;

    }
    else{
      Play = Colour;
      Test = Colour;
      Test2 = Colour;
      Test3 = Colour;
      Test4 = Colour;
      Test5= Colour;
    }
  }
  void Changer4(int codenumb){
    if(codenumb==1)
      if (Play== Colour && Test4 == Colour) {
        Test4 = Colour;
      }
      else if(Play == ColourP){
        Test = Colour;
        Test2 = Colour;
        Test3 = Colour;
        Test4 = Colourtwo;

      }
      else{
        Test4 = Colour;
      }
  }
  void Changer5(int codenumb){
    if(codenumb==6)
      if (Play== Colour && Test5 == Colour) {
        Test5 = Colour;
      }
    if(Play == ColourP){
      Test5 = Colourtwo;
    }
     else if (Test5 == Colourtwo){
       Test5 = Colour;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff292737),
      appBar: AppBar(
        backgroundColor: Color(0xff1F1D2E),
        title: Center(
          child: Text('Mini Robot',style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w900,
          ),
          ),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Controls',style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.bold
            ),),
            SizedBox(height: 30,),
            Container(
              child: Column(
                children: [
                  CircleAvatar(
                    radius: 30,
                    backgroundColor: Test,
                    child: IconButton(icon: Icon(Icons.arrow_upward, color: Colors.black,),
                      onPressed: () {
                      setState(() {
                        Changer(1);
                      });
                      },
                    ),
                  ),
                  SizedBox(height: 10,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CircleAvatar(
                        radius: 30,
                        backgroundColor: Test2,
                        child: IconButton(icon: Icon(Icons.arrow_back, color: Colors.black,),
                          onPressed: () {
                            setState(() {
                              Changer2(1);
                            });
                          },
                        ),
                      ),
                      SizedBox(width: 10,),
                      CircleAvatar(
                        radius: 30,
                        backgroundColor: Play,
                        child: IconButton(icon:Icon(Icons.play_arrow),color: Colors.white,
                          onPressed: () {
                          setState(() {
                            ChangerPlay(2);
                          });
                             },
                        ),
                      ),
                      SizedBox(width: 10,),
                      CircleAvatar(
                        radius: 30,
                        backgroundColor: Test3,
                        child: IconButton(icon: Icon(Icons.arrow_forward, color: Colors.black,),
                          onPressed: () {
                            setState(() {
                              Changer3(1);
                            });
                          },
                        ),
                      ),

                    ],

                  ),
                  SizedBox(height: 10,),
                  CircleAvatar(
                    radius: 30,
                    backgroundColor: Test4,
                    child: IconButton(icon: Icon(Icons.arrow_downward, color: Colors.black,),
                      onPressed: () {
                        setState(() {
                          Changer4(1);
                        });
                      },
                    ),
                  ),
                  SizedBox(height: 100,),

                  Container(
                    height: 45,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Test5,
                    ),
                    child: FlatButton.icon(
                        onPressed: (){
                          setState(() {
                            Changer5(6);
                          });
                        },
                        icon: Icon(Icons.shower,color: Colors.white,size: 30,),
                        label: Text('SPRAY',style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                            fontWeight: FontWeight.bold
                        ),)),
                  )
                ],
              ),
            )
          ],

        ),
      ),
    );
  }
}



