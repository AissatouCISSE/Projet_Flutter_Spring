import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:frontfluttertattagine/helpers/CheckConnection.dart';
import 'package:frontfluttertattagine/pagedaccueil.dart';

class Gestion extends StatefulWidget {
  @override
  State<Gestion> createState() {
    return _Gestion();
  }

}

class _Gestion extends State<Gestion>{

  String val="";

  @override
  void initState() {
    super.initState();
   //CheckConnection().checkConnection(context);
  }

  @override
  void dispose() {
    //CheckConnection().listener.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            "METIERS DE LA GESTION",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.orange
            ),
          ),
        ),
        backgroundColor: Color(0xff3b8391),
      ),
      body:Column(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.all(10.0),
            child: Image.asset("images/gestion.gif")
          ),
          Padding(
            padding: EdgeInsets.all(10.0),
            child: Text(
              "POUR CE DEPARTEMENT , VEUILLEZ PATIENTER NOUS SOMMES ACTUELLEMENT SUR CE CAS ",
              textAlign: TextAlign.center,
              style:TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 22.0,
              )
            ),
          ),
          Padding(
            padding: EdgeInsets.all(10.0),
            child: RaisedButton(
              child: Text(
                "RETOUR"
              ),
              onPressed: ()=>{
                Navigator.pop(context),
                Navigator.push(context,MaterialPageRoute(
                  builder: (context) => AccueilPage()
                ))
              },
            ),
          )
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(
                Icons.message,
              color: Color(0xff3b8391),
            ),
            title: Text("ABOUT US"),
          ),
          BottomNavigationBarItem(
              icon:Icon(
                  Icons.wc,
                 color:Color(0xff3b8391) ,
              ),
              title: Text("OUR GOAL")
          )
        ],
      ),
    );
  }

}