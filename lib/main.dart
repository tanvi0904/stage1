import 'package:flutter/material.dart';
import 'LoginPage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: LoginPage(),
    );
  }
}

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
        //backgroundColor: Colors.red,
        body: Container(
          //margin: const EdgeInsets.fromLTRB(15, 15, 15, 15),

          decoration: BoxDecoration(
              image: DecorationImage(
            image: NetworkImage("https://cms-static.wehaacdn.com/documentmedia-com/images/Kodak-Alaris-Drives-Capture-to-the-Edge-with-New-N.2180.jpg"),
            fit: BoxFit.cover,
          )),

          child: Align(
            alignment: Alignment.center,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                //Padding(
                //padding: EdgeInsets.all(10.0),

                SizedBox(
                  width: 150.0,
                  height: 100.0,
                  child: RaisedButton(
                    onPressed: () => Navigator.pop(context),

                    //color: Color(0xffFF1744),
                    color: Color(0xFF5B9100),
                    // textColor: Colors.black,
                    splashColor: Colors.blue,
                    padding: EdgeInsets.fromLTRB(5, 0, 0, 10),
                    child: Text(
                      'Scan',
                      style: TextStyle(color: Colors.black, fontSize: 25),
                    ),
                  ),
                ),

                SizedBox(
                  width: 150.0,
                  height: 100.0,
                  child: RaisedButton(
                    onPressed: () => Navigator.pop(context),

                    //color: Color(0xffFF1744),
                    color: Color(0xFFFFAF33),
                    //textColor: Colors.black,
                    splashColor: Colors.blue,
                    padding: EdgeInsets.fromLTRB(15, 10, 15, 10),
                    child: Text(
                      'Multimedia',
                      style: TextStyle(color: Colors.black, fontSize: 25),
                    ),
                  ),
                ),

                SizedBox(
                  width: 150.0,
                  height: 100.0,
                  child: RaisedButton(
                    onPressed: () => Navigator.pop(context),

                    //color: Color(0xffFF1744),
                    color: Color(0xFFFE7224),
                    //textColor: Colors.black,
                    splashColor: Colors.blue,
                    padding: EdgeInsets.fromLTRB(15, 10, 15, 10),
                    child: Text(
                      'Incident',
                      style: TextStyle(color: Colors.black, fontSize: 25),
                    ),
                  ),
                ),

                SizedBox(
                  width: 150.0,
                  height: 100.0,
                  child: RaisedButton(
                    onPressed: () => Navigator.pop(context),

                    //color: Color(0xffFF1744),
                    color: Color(0xFF0096FF),
                    // textColor: Colors.black,
                    splashColor: Colors.blue,
                    padding: EdgeInsets.fromLTRB(15, 10, 15, 10),
                    child: Text(
                      'Test',
                      style: TextStyle(color: Colors.black, fontSize: 25),
                    ),
                  ),
                ),
                //),

                Divider(height: 100),

                /*Padding( 
                  padding: EdgeInsets.all(10.0),*/
                SizedBox(
                  width: 80.0,
                  height: 50.0,
                  child: RaisedButton(
                    onPressed: () => Navigator.pop(context),

                    //color: Color(0xffFF1744),
                    color: Colors.white,
                    textColor: Colors.black,
                    splashColor: Colors.grey,
                    padding: EdgeInsets.fromLTRB(15, 10, 15, 10),
                    child: Text('END'),
                  ),
                ),
              ],
            ),
          ),
        ),
      );
}

//await Firebase.initializeApp();
