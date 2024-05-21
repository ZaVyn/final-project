import 'package:flutter/material.dart';
import 'package:flutter_application_1/config/asset.dart';
import 'package:flutter_application_1/home.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Login',
      theme: ThemeData.dark(), // Set theme to dark
      home: LoginPage(),
    );
  }
}

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();
  final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: asset.colorPrimaryDark, // Set background color to black
      body: Center(
        child: Container(
          padding: EdgeInsets.all(20.0),
          child: Form(
            key: _formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                // Add your logo here
                Image.asset(
                  'assets/logo.png', // Path to your logo asset
                  height: 150, // Adjust the height as needed
                ),
                SizedBox(height: 30.0), // Add spacing between logo and form fields
                TextFormField(
                  controller: _usernameController,
                  decoration: InputDecoration(
                    labelText: 'Username',
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Username cannot be empty';
                    }
                    return null;
                  },
                ),
                SizedBox(height: 20.0),
                TextFormField(
                  controller: _passwordController,
                  obscureText: true,
                  decoration: InputDecoration(
                    labelText: 'Password',
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Password cannot be empty';
                    }
                    return null;
                  },
                ),
                SizedBox(height: 30.0),
                ElevatedButton(
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      print('Username: ${_usernameController.text}');
                      print('Password: ${_passwordController.text}');

                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context)=>HomeScreen())
                      );
                    } 
                  },
                  child: Text(
                    'Login',
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      color: asset.colorSecondary),
                    ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
