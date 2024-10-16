import 'package:flutter/material.dart';
import 'home_screen.dart';  // Import your home screen

class SignUpScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              SizedBox(height: 30),
              Text(
                'Create an account',
                style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 30),
              _buildTextField('Enter Your Username'),
              SizedBox(height: 15),
              _buildTextField('Enter Your Email'),
              SizedBox(height: 15),
              _buildTextField('Enter Your Phone Number'),
              SizedBox(height: 15),
              _buildTextField('Enter Your Password', isPassword: true),
              SizedBox(height: 25),
              ElevatedButton(
                child: Text('Sign Up'),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                  padding: EdgeInsets.symmetric(vertical: 15),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => HomeScreen()));
                },
              ),
              SizedBox(height: 20),
              _buildSocialLoginSection(),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Already have an account?'),
                  TextButton(
                    child: Text('Login', style: TextStyle(color: Colors.blue)),
                    onPressed: () {
                      Navigator.pop(context); // Go back to the login screen
                    },
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildTextField(String hint, {bool isPassword = false}) {
    return TextField(
      obscureText: isPassword,
      decoration: InputDecoration(
        hintText: hint,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
        ),
        contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
      ),
    );
  }

  Widget _buildSocialLoginSection() {
    return Column(
      children: [
        ElevatedButton.icon(
          icon: Icon(Icons.facebook, color: Colors.white),
          label: Text('Signup with Facebook'),
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.blue[800],
            padding: EdgeInsets.symmetric(vertical: 12),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            ),
          ),
          onPressed: () {},
        ),
        SizedBox(height: 15),
        OutlinedButton(
          onPressed: () {},
          style: OutlinedButton.styleFrom(
            padding: EdgeInsets.symmetric(vertical: 12),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.network('https://cdn.iconscout.com/icon/free/png-256/google-160-189824.png', height: 24, width: 24),
              SizedBox(width: 10),
              Text('Sign up with Google'),
            ],
          ),
        ),
      ],
    );
  }
}
