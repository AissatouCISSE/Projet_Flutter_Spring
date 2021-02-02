
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

class Apropos extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text(" A PROPOS "),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.all(10.0),
                    child:  Image.asset("images/seck.png",
                      width:100,
                    ),
                  ),
                ),
                Expanded(
                    child: Column(
                      children: <Widget>[
                        Padding(
                            padding: EdgeInsets.fromLTRB(10.0, 40.0, 10.0, 0.0),
                            child: Text(
                              "NGOR SECK",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 23.0,
                              ),
                            )
                        ),
                        Padding(
                            padding: EdgeInsets.fromLTRB(10.0, 5.0, 10.0, 10.0),
                            child: Text(
                              "Fondateur du centre de formation professionnelle de Tattaguine Escale",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18.0,
                              ),
                            )
                        ),
                      ],
                    )
                )
              ],
            ),
            Padding(
              padding: EdgeInsets.all(15.0),
              child: Text("CONTEXTE",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 23.0,
                ),
              ),
            ),
            Row(
              children: <Widget>[
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Image.asset("images/read.png",
                      width: 50.0,
                    ),
                  )
                ),
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(10.0,10.0,10.0,0.0),
                    child: Text(
                      "Beaucoup de jeunes de la localité manquent "
                          "d’orientation après le BFEM ou le BAC. Ils choisissent des "
                          "séries qui ne sont pas forcément liées à un métier ou bien qui "
                          "ne correspondent pas à leur profile. Ils sont donc obligés de passer par des examens, "
                          "concours et bourses pour un parcours professionnel.D’autres, ne peuvent plus poursuivre "
                          "leur scolarité par manque de moyens et cela crée un taux considérable de non qualification professionnelle des"
                          " jeunes et  des femmes.",
                      style: TextStyle(
                        fontWeight: FontWeight.bold
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                )
              ],
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(10.0, 0.0, 10.0, 10.0),
              child: Text(
                "concours et bourses pour un parcours professionnel.D’autres, ne peuvent plus poursuivre "
                    "leur scolarité par manque de moyens et cela crée un taux considérable de non qualification professionnelle des"
                    " jeunes et  des femmes."
                "Les femmes dans leur majorité sont des entrepreneurs, mais font face à des obstacles pour pérenniser leurs activités et souvent par manque de stratégie. Quelques unes sont analphabètes ou déscolarisées, elles ont donc besoin d’être encadrées"
                    " à travers des programmes d’alphabétisation et de formation axée sur leurs activités.",
                style: TextStyle(
                    fontWeight: FontWeight.bold
                ),
                textAlign: TextAlign.center,
              ),
            ),
            Padding(
              padding: EdgeInsets.all(15.0),
              child: Text("VISION",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 23.0,
                ),
              ),
            ),
            Row(
              children: <Widget>[
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Text(
                      "Les jeunes doivent être accompagnés pour une meilleur utilisation des outils digitaux. En effet au niveau national la plupart des plateformes sont orientés web: on peut citer comme exemple les plateformes d’orientation post BAC, de demande d’emploi dans le privé et dans la fonction publique de même que les concours.Le numérique, aujourd’hui, est un moteur d’employabilité pour les jeunes dans un secteur en pleine expansion. Cela passe entre autre par des parcours d’accompagnement bien structurés, la consolidation des acquis et la validation des compétences. ",
                      style: TextStyle(
                          fontWeight: FontWeight.bold
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
                Expanded(
                    child: Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Image.asset("images/read.png",
                        width: 50.0,
                      ),
                    )
                ),
              ],
            )
          ],
        ),
      )
    );
  }
}