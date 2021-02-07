import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool animationContainer=false;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextFormField(),
          TextFormField(),
          SizedBox(height: 40,),
          InkWell(
            onTap: (){
              setState(() {
                animationContainer=true;
              });
            },
            child: AnimatedContainer(
              duration: Duration(seconds: 1),
              height: 50,
              child: Center(
                child: Text(
                  'Login',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 20
                ),
                ),
              ),
              decoration: BoxDecoration(
                color: animationContainer?Colors.blue:Colors.green,
                borderRadius: BorderRadius.circular(25),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
