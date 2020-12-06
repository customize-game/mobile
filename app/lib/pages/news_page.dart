import 'package:flutter/material.dart';

class NewsPage extends StatelessWidget {
  NewsPage();

  @override
  Widget build(BuildContext context) {
    return Container(
      child : ListView(
        children: [
          Container(
            child: Text(
              "Information" ,
              textAlign: TextAlign.left ,
            ) ,
            margin: const EdgeInsets.only( top : 10 ),
          ) ,
          Container(
            child: ListView(
              children: [
                Container(
                  height: 200,
                  color: Colors.indigo,
                ) ,
                Container(
                  height: 200,
                  color: Colors.blueGrey,
                ) ,
                Container(
                  height: 200,
                  color: Colors.blue,
                ) ,
                Container(
                  height: 200,
                  color: Colors.black,
                ) ,
              ],
            ) ,
            height:200 ,          
          ) ,
          Container(
            child : Text(
              "notify" ,
              textAlign: TextAlign.left ,
            ) ,
            margin: const EdgeInsets.only( top : 10 ),
          ) ,
          Container(
            child: ListView(
              children: [
                Container(
                  height: 200,
                  color: Colors.indigo,
                ) ,
                Container(
                  height: 200,
                  color: Colors.blueGrey,
                ) ,
                Container(
                  height: 200,
                  color: Colors.blue,
                ) ,
                Container(
                  height: 200,
                  color: Colors.black,
                ) ,
              ],
            ) ,
            height:200 ,
          ) ,
        ]
      ) ,
      padding: const EdgeInsets.symmetric( horizontal : 10 ) ,
    );
  }
}