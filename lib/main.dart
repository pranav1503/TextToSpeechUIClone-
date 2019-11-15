import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
void main() {
  runApp(MyApp());

}


class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "Design 1",

        debugShowCheckedModeBanner: false,
        home: Home()
    );
  }
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
      return Scaffold(
        backgroundColor: Colors.white,
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(40.0),
          child: AppBar(
            backgroundColor: Color(0x00000000),
            elevation: 0.0,
          ),

        ),
        body: SingleChildScrollView(
          child: Column(
          children: <Widget>[
            Container(
              margin: const EdgeInsets.only(left: 20.0,right: 20.0),
//              color: Color.fromRGBO(129 , 100, 234,1.0),
              width: double.infinity,
              height: 200.0,
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                    // Where the linear gradient begins and ends
                    begin: Alignment.topRight,
                    end: Alignment.bottomLeft,
                    // Add one stop for each color. Stops should increase from 0 to 1
                    stops: [0.1, 0.5, 0.7, 0.9],
                    colors: [
                      // Colors are easy thanks to Flutter's Colors class.
                      Color.fromRGBO(129 , 100, 234,1.0),
                      Color.fromRGBO(129 , 100, 234,0.9),
                      Color.fromRGBO(129 , 100, 234,0.8),
                      Color.fromRGBO(129 , 100, 234,0.7),
                    ],
                  ),
                  color: Color.fromRGBO(129 , 100, 234,1.0),
                  borderRadius: new BorderRadius.all(const Radius.circular(20.0))
              ),
              child: Column(
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(top: 40.0),
                    child:  Center(
                      child: Image(
                        image: AssetImage("assets/abc.png"),
                        height: 60,
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 10.0),
                    child: Center(

                      child: Text(
                        "Paste Text",
                        style: TextStyle(
                          fontFamily: 'Roboto',
                          fontWeight: FontWeight.bold,
                          fontSize: 20.0,
                          color: Colors.white,),

                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 10.0),
                    child: Center(

                      child: Text(
                        "Input or Paste your text",
                        style: TextStyle(fontWeight: FontWeight.bold,fontSize: 10.0,color: Colors.white),
                      ),
                    ),
                  )
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(left: 20.0,right: 20.0,top: 20.0),
//              color: Color.fromRGBO(129 , 100, 234,1.0),
              width: double.infinity,
              height: 200.0,
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                    // Where the linear gradient begins and ends
                    begin: Alignment.topRight,
                    end: Alignment.bottomLeft,
                    // Add one stop for each color. Stops should increase from 0 to 1
                    stops: [0.1, 0.5, 0.7, 0.9],
                    colors: [
                      // Colors are easy thanks to Flutter's Colors class.
                      Color.fromRGBO(253 , 98, 117,1.0),
                      Color.fromRGBO(253 , 98, 117,0.9),
                      Color.fromRGBO(253 , 98, 117,0.8),
                      Color.fromRGBO(253 , 98, 117,0.7),
                    ],
                  ),
                  color: Color.fromRGBO(129 , 100, 234,1.0),
                  borderRadius: new BorderRadius.all(const Radius.circular(20.0))
              ),
              child: Column(
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(top: 40.0),
                    child:  Center(
                      child: Image(
                        image: AssetImage("assets/import.png"),
                        height: 60,
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 10.0),
                    child: Center(

                      child: Text(
                        "Import File",
                        style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20.0,color: Colors.white),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 10.0),
                    child: Center(

                      child: Text(
                        "Use text file from storage",
                        style: TextStyle(fontWeight: FontWeight.bold,fontSize: 10.0,color: Colors.white),
                      ),
                    ),
                  ),

                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(left: 20.0,right: 20.0,top: 20.0),
//              color: Color.fromRGBO(129 , 100, 234,1.0),
              width: double.infinity,
              height: 50.0,

              child: Column(
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(top: 10.0),
                    child:Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "OPEN RECENT",
                        style: TextStyle(fontWeight: FontWeight.bold,fontFamily: 'Roboto', fontSize: 20.0, color: Colors.grey),
                      ),
                    )
                  ),
                ],
              ),
            ),
            new openRecent("General And Surprising ", "20 Jul 2019"),
            new openRecent("Life is Short ", "10 May 2019"),
            new openRecent("How to make Pittsburg..", "15 Jan 2019"),
            new openRecent("Something new ", "15 Dec 2018"),

          ],
        ),)
      );
  }
}

class openRecent extends StatelessWidget{
  final String heading,date;

  const openRecent(this.heading,this.date);
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        print(heading);
      },
      child: Container(
        margin: const EdgeInsets.only(left: 20.0,right: 20.0,top: 10.0,bottom: 5.0),
        height: 80.0,
        padding: new EdgeInsets.only(top:15,left: 20),
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.grey[200],
              blurRadius: 5.0, // has the effect of softening the shadow
              spreadRadius: 2, // has the effect of extending the shadow
            )
          ],
          borderRadius: new BorderRadius.all(const Radius.circular(20)),
          color: Colors.white,
        ),
        child: Align(
            alignment: Alignment.topLeft,
            child: Column(
              children: <Widget>[
                Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    heading,
                    style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,letterSpacing: 1,fontFamily: 'Roboto'),
                  ),
                ),
                Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    date,
                    style: TextStyle(fontSize: 15,color: Colors.grey,fontFamily: 'Roboto'),
                  ),
                )
              ],
            )
        ),
      ),
    );
  }
}