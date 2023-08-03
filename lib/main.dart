import 'package:flutter/material.dart';

void main() => runApp(LoginPage());

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool _isObscure = true;

  void _toggleObscure() {
    setState(() {
      _isObscure = !_isObscure;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Login',
      home: Scaffold(
        body: Container(
          color: Color.fromARGB(
              255, 138, 14, 14), // Set your desired background color here
          child: Center(
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.network(
                        'https://upload.wikimedia.org/wikipedia/commons/a/a0/UNIVERSITASTEKNOKRAT.png',
                        width: 80.0,
                        height: 80.0,
                      ),
                      SizedBox(width: 10),
                      Text(
                        'Universitas Teknokrat Indonesia',
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                  // Add some space below the main text
                  Text(
                    'Universitas Terbaik Di Sumatera',
                    style: TextStyle(
                      fontSize: 16,
                      color: Color.fromARGB(255, 230, 138, 34),
                    ),
                  ),
                  SizedBox(height: 50.0),
                  Card(
                    // Wrap the Username field with a Card
                    color: Colors.white, // Set a white background for the Card
                    elevation:
                        2.0, // Add some elevation for a subtle shadow effect
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: Container(
                      width: 300.0,
                      padding: EdgeInsets.symmetric(horizontal: 16.0),
                      child: TextField(
                        decoration: InputDecoration(
                          labelText: 'Username',
                          border: InputBorder.none, // Remove the border
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 10.0),
                  Card(
                    // Wrap the Password field with a Card
                    color: Colors.white, // Set a white background for the Card
                    elevation:
                        2.0, // Add some elevation for a subtle shadow effect
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: Container(
                      width: 300.0,
                      padding: EdgeInsets.symmetric(horizontal: 16.0),
                      child: TextField(
                        obscureText: _isObscure,
                        decoration: InputDecoration(
                          labelText: 'Password',
                          border: InputBorder.none, // Remove the border
                          suffixIcon: IconButton(
                            icon: Icon(
                              _isObscure
                                  ? Icons.visibility
                                  : Icons.visibility_off,
                            ),
                            onPressed: _toggleObscure,
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 10.0),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: TextButton(
                      onPressed: () {},
                      child: RichText(
                        text: TextSpan(
                          text: 'Lupa Password? ',
                          style: TextStyle(
                              color: Color.fromARGB(255, 97, 245, 60)),
                          children: <TextSpan>[
                            TextSpan(
                              text: 'Klik Disini',
                              style: TextStyle(color: Colors.red),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 50.0),
                  ElevatedButton(
                    onPressed: () {},
                    child: Text('Login'),
                    style: ElevatedButton.styleFrom(
                      primary: Color.fromARGB(
                          255, 224, 141, 16), // Set the button color to yellow
                    ),
                  ),
                  SizedBox(height: 100.0),
                  Text(
                    'Developed By ',
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    'M Dhimas Priyono (21312050)',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold, // Make the text bold
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
