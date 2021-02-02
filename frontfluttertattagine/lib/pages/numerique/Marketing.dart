import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Marketing extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     backgroundColor: Colors.white,
     appBar: AppBar(
       title: Text(
         "MARKETING DIGITAL",
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
                     "images/marketing.jpg",
                     width: 370.0,
                   ),
                 ),
               ),
               Padding(
                 padding: EdgeInsets.all(10.0),
                 child: Text(
                   "MARKETING DIGITAL",
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
                           "Définir et mettre en oeuvre la stratégie marketing "
                               "de l’entreprise : supports techniques, communication et promotion"
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
                           "concevoir la stratégie marketing de l’entreprise"
                       ),
                     ),
                     ListTile(
                       leading: Icon(Icons.rate_review),
                       title: Text(
                           "optimiser le ciblage"
                       ),
                     ),
                     ListTile(
                       leading: Icon(Icons.rate_review),
                       title: Text(
                           "définir une stratégie de marketing digital "
                       ),
                     ),
                     ListTile(
                       leading: Icon(Icons.rate_review),
                       title: Text(
                           "évaluer l’impact"
                       ),
                     ),
                     ListTile(
                       leading: Icon(Icons.rate_review),
                       title: Text(
                           "Réaliser des opérations de marketing d’un site internet"
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
                           "améliorer le positionnement d’un site web auprès des moteurs de recherche"
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