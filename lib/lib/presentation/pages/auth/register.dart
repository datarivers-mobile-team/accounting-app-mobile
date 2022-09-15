import 'package:flutter/material.dart';

class Register extends StatelessWidget {
  const Register({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const <Widget>[
              Text(
                'Welcome!',
                style: TextStyle(fontSize: 35, fontWeight: FontWeight.w700),
              ),
              SizedBox(height: 21),
              Text(
                'Please provide following\ndetails for your new account',
                style: TextStyle(
                  height: 1.6,
                  fontSize: 15,
                  fontWeight: FontWeight.w400,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 77),
              TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Full Name',
                    prefixIcon: Icon(Icons.person)),
              ),
              SizedBox(height: 10),
              TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Email Address',
                  labelStyle: TextStyle(color: Colors.black),
                  filled: true,
                  fillColor: Colors.black12,
                  prefixIcon: Icon(Icons.email, color: Colors.black),
                ),
              ),
              SizedBox(height: 10),
              TextField(
                  style: TextStyle(
                    color: Colors.black,
                  ),
                  obscureText: true,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Password',
                      prefixIcon: Icon(Icons.lock))),
            ],
          ),
        ),
      ),
    );
  }
}
