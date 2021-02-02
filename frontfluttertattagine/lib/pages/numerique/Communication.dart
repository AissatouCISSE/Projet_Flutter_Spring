import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Communication extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     backgroundColor: Colors.white,
     appBar: AppBar(
       title: Text(
         "COMMUNICATION DIGITALE",
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
                     "images/communication.png",
                     width: 370.0,
                   ),
                 ),
               ),
               Padding(
                 padding: EdgeInsets.all(10.0),
                 child: Text(
                   "COMMUNICATION DIGITALE",
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
                         child: Image.asset(
                           "images/goal.jpg",
                           width: 10.0,
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
                           "Savoir mener des opérations de communication et de diffusion de l’information "
                               "grâce à des outils ou support de "
                               "communication selon la stratégie définie par l’entreprise."
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
                             "images/comptence.jpg",
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
                           "techniques de communication"
                       ),
                     ),
                     ListTile(
                       leading: Icon(Icons.rate_review),
                       title: Text(
                           "normes rédactionnelles"
                       ),
                     ),
                     ListTile(
                       leading: Icon(Icons.rate_review),
                       title: Text(
                           "utilisation d’outils de travail collaboratif"
                       ),
                     ),
                     ListTile(
                       leading: Icon(Icons.rate_review),
                       title: Text(
                           "maîtrise des outils de web analyse"
                       ),
                     ),
                     ListTile(
                       leading: Icon(Icons.rate_review),
                       title: Text(
                           "capacités rédactionnelles (revues, presse, communiqué…)"
                       ),
                     ),
                     ListTile(
                       leading: Icon(Icons.rate_review),
                       title: Text(
                           "conception des supports de communication visuelle"
                       ),
                     ),
                     ListTile(
                       leading: Icon(Icons.rate_review),
                       title: Text(
                           "amélioration de l’e-réputation d’un site web et son positionnement sur la toile"
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