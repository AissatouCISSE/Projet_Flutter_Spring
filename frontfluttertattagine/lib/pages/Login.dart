import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:frontfluttertattagine/pages/ResponsableDashboard.dart';

class Login extends StatefulWidget {

  String message ="";

  Login(String message){
    this.message = message;
  }

  @override
  State<Login> createState() {
    return _Login();
  }
}

  class _Login extends State<Login>{
    String password="";
    String login="";

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Center(
            child:Text(
          "LOGIN",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.orange
          ),
        ),
      ),
        backgroundColor: Color(0xff3b8391),
      ),
      body: Column(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Container(
              child: Image.network("https://www.tuktukdesign.com/wp-content/uploads/2020/01/login-icon-vector.jpg",
                width: 60.0,
              ),
            ),
          ),
         Padding(
           padding: const EdgeInsets.all(8.0),
           child: Container(
             child: TextField(
              decoration: InputDecoration(
                hintText: "Login",
                hintStyle: TextStyle(
                  fontWeight: FontWeight.bold
                )
              ),
               onChanged: (value)=>{
                setState(()=> {
                    this.login=value
                  }
                )
               },
             ),
           ),
         ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              obscureText: true,
              decoration: InputDecoration(
                hintText: "Password",
                hintStyle: TextStyle(
                  fontWeight: FontWeight.bold
                )
              ),
              onChanged: (value)=>{
                setState(
                    ()=>{
                      this.password=value
                    }
                )
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: RaisedButton(
              color: Color(0xff3b8391),
              child: Text(
                "Se connecter",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.orange
                ),
              ),
              hoverColor: Colors.orange,
              onPressed: ()=>{
                Navigator.push(context, MaterialPageRoute(
                  builder: (context) => ResponsableDashboard(password,login)
                ))
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "${widget.message}"
            )
          )
        ],
      ),
    );
  }



}