
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Developpement extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(
          "DEVELOPPEMENT WEB",
          style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.orange
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Column(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.all(10.0),
                  child:ClipRRect(
                    borderRadius: BorderRadius.circular(57.0),
                    child: Image.asset(
                      "images/web.gif",
                      width: 370.0,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Text(
                    "DEVELOPPEMENT WEB",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 35.0
                    ),
                  ),
                ),
                Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Row(
                      children: <Widget>[
                        Expanded(
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(57.0),
                            child: Image.asset(
                              "images/web3.gif",
                              width: 10.0,
                            ),
                          ),
                        ),
                        Expanded(
                          child: Text(
                            "OBJECTIF GENERAL",
                            style: TextStyle(
                                fontWeight: FontWeight.bold
                            ),
                            textAlign: TextAlign.center,
                          ),
                        )
                      ],
                    )
                ),
                Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Column(
                    children: [
                      ListTile(
                        leading: Icon(Icons.bookmark_border),
                        title: Text(
                            "Concevoir et développer des applications informatiques et des sites web pour un "
                                "particulier ou une entreprise suivant un cahier des charges."
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Row(
                      children: <Widget>[
                        Expanded(
                          child: Text(
                            "COMPETENCES VISEES",
                            style: TextStyle(
                                fontWeight: FontWeight.bold
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        Expanded(
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(57.0),
                            child: Image.asset(
                              "images/web4.gif",
                              width: 10.0,
                            ),
                          ),
                        ),
                      ],
                    )
                ),
                Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Column(
                    children: [
                      ListTile(
                        leading: Icon(Icons.rate_review),
                        title: Text(
                            "savoir analyser les besoins du client"
                        ),
                      ),
                      ListTile(
                        leading: Icon(Icons.rate_review),
                        title: Text(
                            "concevoir des sites web grâce des systèmes de gestion de contenu (CMS)"
                        ),
                      ),
                      ListTile(
                        leading: Icon(Icons.rate_review),
                        title: Text(
                            "concevoir des maquettes fonctionnelles et des connaissances en développement web"
                        ),
                      ),
                      ListTile(
                        leading: Icon(Icons.rate_review),
                        title: Text(
                            "maitrise des systèmes d’exploitation informatique, sécurité informatique et télécoms"
                        ),
                      ),
                      ListTile(
                        leading: Icon(Icons.rate_review),
                        title: Text(
                            "connaissance et pratique de la gestion de projet "
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}