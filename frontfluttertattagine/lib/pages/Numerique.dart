import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:frontfluttertattagine/pagedaccueil.dart';
import 'package:frontfluttertattagine/pages/numerique/Communication.dart';
import 'package:frontfluttertattagine/pages/numerique/Developpement.dart';
import 'package:frontfluttertattagine/pages/numerique/Maintenance.dart';
import 'package:frontfluttertattagine/pages/numerique/Marketing.dart';
import 'package:frontfluttertattagine/pages/numerique/Reseau.dart';

class Numerique extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Center(
          child: Text(
            "METIERS DU NUMERIQUE",
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
            padding: EdgeInsets.all(10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Image.asset(
                  "images/webdeveloper.png",
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.all(20.0),
            child: Text(
              "Le centre de formation professionnelle de la commune de Tattaguine a, en fonction des objectifs visés, "
                  "pour vision de rendre accessible les formations délivrées par les meilleurs écoles du Sénégal "
                  "avec la même qualité. Cela passe par un contenu pédagogique de qualité, un corps"
                  " professoral engagé, dynamique et prêt à offrir le meilleur de lui même pour transmettre"
                  " ses connaissances et ses méthodes pédagogiques. Ce personnel pédagogique sera aussi accompagné"
                  " par des formations de renforcement de capacité.Ainsi le centre aura quatre (4) départements:"
                  " le département des métiers du numérique, des métiers de l’industrie, des métiers du tertiaire"
                  " et enfin le département des métiers de la gestion. Dans chaque département, des cursus de"
                  " spécialisation y seront proposés." ,
              style: TextStyle(
                fontWeight: FontWeight.bold
              ),
            ),
          ),
        ],
      ),
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children:  <Widget>[
              DrawerHeader(
                child: Center(
                  child: ClipRRect(
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                      child: Container(
                        child:Image.asset("images/cfp.png"),
                      )
                  ),
                ),
                decoration: BoxDecoration(
                  color: Color(0xff3b8391),
                ),
              ),
              ListTile(
                trailing: Icon(Icons.arrow_right),
                leading: Icon(Icons.perm_camera_mic),
                title: Text('Communication digitale'),
                onTap: () {
                  Navigator.pop(context);
                  Navigator.push(context, MaterialPageRoute(
                      builder: (context) => Communication()
                  ));
                },
              ),
              ListTile(
                trailing: Icon(Icons.arrow_right),
                leading: Icon(Icons.collections_bookmark),
                title: Text(
                    "Marketing digital"
                ),
                onTap: ()=>{
                  Navigator.pop(context),
                  Navigator.push(context, MaterialPageRoute(
                      builder: (context) => Marketing()
                  ))
                },
              ),
              ListTile(
                trailing: Icon(Icons.arrow_right),
                leading: Icon(Icons.desktop_windows),
                title: Text(
                    "Développement web"
                ),
                onTap: ()=>{
                  Navigator.pop(context),
                  Navigator.push(context, MaterialPageRoute(
                      builder: (context)=> Developpement()
                  ))
                },
              ),
              ListTile(
                trailing: Icon(Icons.arrow_right),
                leading: Icon(Icons.settings_input_antenna),
                title: Text(
                    "Réseau informatique"
                ),
                onTap: ()=>{
                  Navigator.pop(context),
                  Navigator.push(context, MaterialPageRoute(
                      builder: (context)=> Reseau()
                  )),
                },
              ),
              ListTile(
                trailing: Icon(Icons.arrow_right),
                leading: Icon(Icons.security),
                title: Text(
                    "Maintenance informatique"
                ),
                onTap: ()=>{
                  Navigator.pop(context),
                  Navigator.push(context, MaterialPageRoute(
                      builder: (context)=> Maintenance()
                  )),
                },
              ),
              ListTile(
                trailing: Icon(Icons.arrow_right),
                leading: Icon(Icons.exit_to_app),
                title: Text(
                    "Retour"
                ),
                onTap: ()=>{
                  Navigator.pop(context),
                  Navigator.push(context, MaterialPageRoute(
                      builder: (context)=> AccueilPage()
                  ))
                },
              ),
            ],
          ),
        ),
    );
  }

}