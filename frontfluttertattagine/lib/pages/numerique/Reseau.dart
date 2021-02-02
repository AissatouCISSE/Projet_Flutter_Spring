

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Reseau extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(
          "RESEAU INFORMATIQUE",
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
                      "images/network.jpg",
                      width: 370.0,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Text(
                    "RESEAU INFORMATIQUE",
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
                              "images/goal2.jpg",
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
                            "Assurer la disponibilité des ressources physiques et logiques nécessaires au bon fonctionnement "
                                "des systèmes informatiques et télécoms de l’entreprise"
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
                              "images/compt2.png",
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
                            "le déploiement des ressources informatiques"
                        ),
                      ),
                      ListTile(
                        leading: Icon(Icons.rate_review),
                        title: Text(
                            "l’installation et l’intégration de nouveaux matériels "
                                "(Poste de travail, équipement réseau, périphériques…)"
                        ),
                      ),
                      ListTile(
                        leading: Icon(Icons.rate_review),
                        title: Text(
                            "les opérations de maintenance"
                        ),
                      ),
                      ListTile(
                        leading: Icon(Icons.rate_review),
                        title: Text(
                            "application des normes de qualité et les règles de sécurité informatique et télécoms"
                        ),
                      ),
                      ListTile(
                        leading: Icon(Icons.rate_review),
                        title: Text(
                            "Câbler un réseau"
                        ),
                      ),
                      ListTile(
                        leading: Icon(Icons.rate_review),
                        title: Text(
                            "Installer et configurer un point d’accès"
                        ),
                      ),
                      ListTile(
                        leading: Icon(Icons.rate_review),
                        title: Text(
                            "choix technique et l’acquisition des équipements informatiques"
                        ),
                      ),
                      ListTile(
                        leading: Icon(Icons.rate_review),
                        title: Text(
                            "assurer le bon fonctionnement du réseau informatique"
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