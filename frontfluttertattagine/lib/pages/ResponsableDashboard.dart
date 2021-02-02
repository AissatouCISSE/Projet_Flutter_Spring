import 'dart:convert';
import 'dart:io';
import 'package:dio/dio.dart' ;
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:frontfluttertattagine/pages/Login.dart';
import 'package:http/http.dart' as http;

class ResponsableDashboard extends StatefulWidget{

  String login="";
  String password="";
  ResponsableDashboard(String password , String login){
    this.password = password;
    this.login = login;
  }

  @override
  State<ResponsableDashboard> createState() {
    return __Respo();
  }

}


class __Respo extends State<ResponsableDashboard>{

  var ResponsableData;

  @override
  void initState() {
    super.initState();
    login_of_user(widget.password , widget.login);
  }

   login_of_user(String password,String login)async{
      String url = "http://10.42.0.60:9000/login_respo";

      var form_data = {
        'email':login,
        'password':password
      };

       await http.post(url,
          body: json.encode(form_data),
        //encoding: Encoding.getByName('utf-8')
      ).then((response) => {
        print(jsonDecode(response.body).toString())
        // if(response.body.toString().length<0){
        //   Navigator.push(context,MaterialPageRoute(
        //     builder: (context) => Login("LOGIN OR PASSWORD INCORRECT !")
        //   ))
        // }else{
        //   print(jsonDecode(response.body))
        // }
       }).catchError((onError)=>{
           Navigator.push(context,MaterialPageRoute(
             builder: (context) => Login("LOGIN OR PASSWORD INCORRECT !")
           ))
       });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            "DASHBOARD"
          ),
        ),
      ),
    );
  }

}
