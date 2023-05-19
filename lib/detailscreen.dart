import 'package:flutter/material.dart';
import 'model/user.dart';

class DetailScreen extends StatelessWidget {
  final InfoBuah buah;

  const DetailScreen({required this.buah});
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Stack(
          children: <Widget>[
            Center(
              child: Image.asset(buah.imageAsset),
            ),
            SafeArea(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CircleAvatar(
                      backgroundColor: Colors.grey,
                      child: IconButton(
                        icon: Icon(
                          Icons.arrow_back,
                          color: Colors.white,
                        ),
                        onPressed: () {
                          Navigator.pop(context);
                        },
                      ),
                    ),
                    FavoriteButton(),
                  ],
                ),
              ),
            )
          ],
        ),
        Card(
          child: Column(
            children: [
              Container(
                decoration: BoxDecoration(
                  color: Colors.grey,
                  border: Border.all(
                    color: Colors.black,
                    width: 2,
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Flexible(
                      child: Container(
                        margin: EdgeInsets.all(10),
                        padding: EdgeInsets.only(right: 10, left: 10),
                        decoration: BoxDecoration(
                          color: Colors.lightBlue[50],
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(
                            color: Colors.blue,
                          ),
                        ),
                        child: Text(buah.kalori,
                            style: TextStyle(
                                fontSize: 20.0, fontFamily: 'Oxygen')),
                      ),
                    ),
                    Flexible(
                      child: Container(
                        margin: EdgeInsets.all(10),
                        padding: EdgeInsets.only(right: 10, left: 10),
                        decoration: BoxDecoration(
                          color: Colors.lightBlue[50],
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(
                            color: Colors.blue,
                          ),
                        ),
                        child: Text(buah.lemak,
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 20.0, fontFamily: 'Oxygen')),
                      ),
                    ),
                    Flexible(
                      child: Container(
                        margin: EdgeInsets.all(10),
                        padding: EdgeInsets.only(right: 10, left: 10),
                        decoration: BoxDecoration(
                          color: Colors.lightBlue[50],
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(
                            color: Color.fromARGB(255, 83, 108, 129),
                          ),
                        ),
                        child: Text(buah.karbohidrat,
                            style: TextStyle(
                                fontSize: 20.0, fontFamily: 'Oxygen')),
                      ),
                    ),
                    Flexible(
                      child: Container(
                        margin: EdgeInsets.all(10),
                        padding: EdgeInsets.only(right: 10, left: 10),
                        decoration: BoxDecoration(
                          color: Colors.lightBlue[50],
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(
                            color: Colors.blue,
                          ),
                        ),
                        child: Text(buah.protein,
                            style: TextStyle(
                                fontSize: 20.0,
                                fontFamily: 'Oxygen',
                                fontStyle: FontStyle.normal)),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  color: Colors.grey,
                  border: Border.all(
                    color: Colors.black,
                    width: 2,
                  ),
                ),
                child: Text(
                  buah.deskripsi,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 25.0,
                    fontFamily: 'Oxygen',
                  ),
                ),
              ),
            ],
          ),
        )
      ],
    ));
  }
}

class FavoriteButton extends StatefulWidget {
  @override
  _FavoriteButtonState createState() => _FavoriteButtonState();
}

class _FavoriteButtonState extends State<FavoriteButton> {
  bool isFavorite = false;

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundColor: Colors.grey,
      child: IconButton(
        icon: Icon(
          isFavorite ? Icons.favorite : Icons.favorite_border,
          color: Colors.red,
        ),
        onPressed: () {
          setState(() {
            isFavorite = !isFavorite;
          });
        },
      ),
    );
  }
}
