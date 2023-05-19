import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 400,
        padding: EdgeInsets.symmetric(vertical: 20, horizontal: 50),
        margin: EdgeInsets.all(50),
        decoration: BoxDecoration(
          color: Colors.lightBlue[50],
          borderRadius: BorderRadius.circular(20),
          border: Border.all(
            color: Colors.blue,
          ),
        ),
        child: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
          Text(
            'Center adalah bagian tengah suatu widget dalam suatu lapisan yang berbeda'
            'Center adalah bagian tengah suatu widget dalam suatu lapisan yang berbeda ',
            textDirection: TextDirection.ltr,
            style: TextStyle(
              fontSize: 25,
            ),
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.only(top: 50),
              child: Image.network(
                  'https://media-cdn.tripadvisor.com/media/photo-w/13/f0/22/f6/photo3jpg.jpg'),
            ),
          )
        ]),
      ),
    ); // This trailing comma makes auto-formatting ni)
  }
}
