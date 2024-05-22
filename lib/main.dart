import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';
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
                SizedBox(height: 50.0), // Add spacing between logo and form fields
                TextFormField(
                  controller: _usernameController,
                  decoration: InputDecoration(
                    labelText: 'Username',
                    labelStyle: TextStyle(
                      color: asset.colorSecondary,
                    ),
                    errorStyle: TextStyle(
                      color: Colors.red,
                    ),
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
                    labelStyle: TextStyle(
                      color: asset.colorSecondary,
                    ),
                    errorStyle: TextStyle(
                      color: Colors.red,
                    ),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Password cannot be empty';
                    }
                    return null;
                  },
                ),
                SizedBox(height: 20,),
                Align(
                  alignment: Alignment.centerRight,
                  child: TextButton(
                  onPressed: () {

                  },
                  child: Text(
                    'Forget Password?',
                    style: TextStyle(
                      color: Colors.blue, // Adjust the color as needed
                      ),
                  ),
                ),
              ),     
                SizedBox(height: 75.0),
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
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(Color(0xFF395886)), // Gunakan nilai ARGB di sini
                    ),
                  child: Text(
                    'Login',
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      color: asset.colorSecondary,
                      fontWeight: FontWeight.bold,
                      ),
                    ),
                ),
                SizedBox(height: 20.0),
                Text('Or register with'),
                SizedBox(height: 20.0),
                ElevatedButton.icon(
                  onPressed: () {

                  },
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(Colors.red),
                    ),
                    icon: Icon(Icons.g_translate),
                    label: Text('Google'),
                  ),
                  SizedBox(height: 10.0),
                  ElevatedButton.icon(
                    onPressed: () {

                    },
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(Colors.blue),
                      ),
                      icon: Icon(Icons.facebook),
                      label: Text('Facebook'),
                    ), // Ganti
              ],
            ),
          ),
        ),
      ),
    );
  }
}
