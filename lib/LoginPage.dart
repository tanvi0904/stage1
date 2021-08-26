import 'package:flutter/material.dart';
import 'main.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  // TODO: Add text editing controllers (101)
  final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
          image: NetworkImage("https://cse.sc.edu/~sur/csce416_f20/csce416_banner.png"),
          fit: BoxFit.cover,
        )),
        child: ListView(
          padding: EdgeInsets.symmetric(horizontal: 24.0),
          children: <Widget>[
            SizedBox(height: 80.0),
            Column(
              children: <Widget>[
                SizedBox(
                  height: 70.0,
                  child: Text('RF Scanner', style: TextStyle(color: Colors.white, fontSize: 55)),
                  //textColor: Colors.blue,
                  // fontSize: 35,
                ),
              ],
            ),

            SizedBox(height: 120.0),
            // TODO: Wrap Username with AccentColorOverride (103)
            // TODO: Remove filled: true values (103)
            // TODO: Wrap Password with AccentColorOverride (103)
            // TODO: Add TextField widgets (101)
            // [Name]
            TextField(
              controller: _usernameController,
              decoration: InputDecoration(
                hintText: ('Enter your Username'),
                filled: true,
                fillColor: Colors.white,
                labelText: 'Username',
              ),
              style: TextStyle(color: Colors.black, fontSize: 25),
            ),
            // spacer
            SizedBox(height: 12.0),
            // [Password]
            TextField(
              controller: _passwordController,
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white,
                labelText: 'Password',
              ),
              style: TextStyle(color: Colors.black, fontSize: 25),
              obscureText: true,
            ),
            // TODO: Add button bar (101)
            ButtonBar(
              // TODO: Add a beveled rectangular border to CANCEL (103)
              children: <Widget>[
                // TODO: Add buttons (101)
                RaisedButton(
                  child: Text('CANCEL'),
                  textColor: Colors.black,
                  onPressed: () {
                    // TODO: Clear the text fields (101)
                    _usernameController.clear();
                    _passwordController.clear();
                  },
                ),
                // TODO: Add an elevation to NEXT (103)
                // TODO: Add a beveled rectangular border to NEXT (103)
                RaisedButton(
                  child: Text('LOGIN'),
                  textColor: Colors.black,
                  onPressed: () => Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => MainPage()),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
