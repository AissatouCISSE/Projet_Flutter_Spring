import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:frontfluttertattagine/pagedaccueil.dart';

class Tertaire extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            "METIERS DU TERTIARE",
            style: TextStyle(
              color: Colors.orange,
              fontWeight: FontWeight.bold
            ),
          ),
        ),
        backgroundColor: Color(0xff3b8391),
      ),
      body:Column(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.all(10.0),
            child: Image.asset("images/tertiaireGif.gif"),
          ),
          Padding(
            padding: EdgeInsets.all(10.0),
            child: Text(
              "LES INFORMATIONS CONCERNANT CE DEPARTEMENT SONT POUR LE MOMENT INDISPONIBLE",
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                fontSize: 22.0,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(10.0),
            child: RaisedButton(
              child: Text(
                "RETOUR",
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
            icon: Icon(Icons.message,color:Color(0xff3b8391)),
            title: Text("ABOUT US"),
          ),
          BottomNavigationBarItem(
            icon:Icon(Icons.wc,color:Color(0xff3b8391)),
            title: Text("OUR GOAL")
          )
        ],
      ),
    );
  }

}