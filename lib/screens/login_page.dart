import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_practice/utils/routes.dart';

class LoginPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: Column(
        children: [
          Image.asset("assets/images/",
          fit: BoxFit.cover,),
          SizedBox(height: 20.0,),
          Text("WELCOME",
          style: TextStyle(fontSize: 29.0,fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 20.0,),
          Padding(padding: const EdgeInsets.symmetric(vertical: 16.0,horizontal: 32.0),
          child: Column(children: [
            TextFormField(
              decoration: InputDecoration(
                hintText: "Enter Username",
                labelText: "Username"
              ),
            ),
            TextFormField(
              obscureText: true,
              decoration: InputDecoration(
                  hintText: "Enter password",
                  labelText: "Password"
              ),
            ),
            SizedBox(height: 40.0,),
            ElevatedButton(child: Text("Login"),
            style: TextButton.styleFrom(minimumSize: Size(150, 40),),
            onPressed: (){
              Navigator.push(context, MyRoutes.homeRoute);
            },
            )

          ],),

          )

        ],
      ),
    );
  }
}
