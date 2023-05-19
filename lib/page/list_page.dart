import 'dart:io';

import 'package:flutter/material.dart';
import 'package:nav_bar_widget/detailscreen.dart';
import 'package:nav_bar_widget/model/user.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  State<SearchPage> createState() => _SearchPage();
}

class _SearchPage extends State<SearchPage> {
  TextEditingController? _textEditingController = TextEditingController();
  List<InfoBuah> infoListOnSearch = [];

  void updateList(String value) {
    setState(() {
      infoListOnSearch = InfoBuahList.where((element) =>
          element.buah.toLowerCase().contains(value.toLowerCase())).toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Container(
          decoration: BoxDecoration(
              color: Colors.blue.shade300,
              borderRadius: BorderRadius.circular(30)),
          child: TextField(
            onChanged: (value) => updateList(value),
            controller: _textEditingController,
            decoration: InputDecoration(
                border: InputBorder.none,
                errorBorder: InputBorder.none,
                enabledBorder: InputBorder.none,
                focusedBorder: InputBorder.none,
                contentPadding: EdgeInsets.all(15),
                hintText: 'Search'),
          ),
        ),
        actions: [
          TextButton(
            onPressed: () {
              infoListOnSearch.clear();
              _textEditingController!.clear();
              setState() {
                _textEditingController!.text = '';
              }
            },
            child: Icon(
              Icons.close,
              color: Colors.red,
            ),
          ),
        ],
      ),
      body: _textEditingController!.text.isNotEmpty && infoListOnSearch.isEmpty
          ? Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.search_off,
                    size: 100,
                    color: Colors.blue,
                  ),
                  Text(
                    'No result found',
                    style: TextStyle(
                      fontSize: 35,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            )
          : ListView.builder(
              itemCount: _textEditingController!.text.isNotEmpty
                  ? infoListOnSearch.length
                  : InfoBuahList.length,
              itemBuilder: (context, index) {
                final InfoBuah buah = InfoBuahList[index];
                return InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return DetailScreen(buah: buah);
                    }));
                  },
                  child: Card(
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Expanded(
                          child: Image.asset(
                            buah.imageAsset,
                          ),
                        ),
                        Flexible(
                          child: Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisSize: MainAxisSize.min,
                                children: <Widget>[
                                  Text(
                                    buah.buah,
                                    style: const TextStyle(fontSize: 30),
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Flexible(
                                          child: Container(
                                            margin: const EdgeInsets.all(10),
                                            padding: const EdgeInsets.only(
                                                right: 10, left: 10),
                                            decoration: BoxDecoration(
                                              color: Colors.lightBlue[50],
                                              borderRadius:
                                                  BorderRadius.circular(20),
                                              border: Border.all(
                                                color: Colors.blue,
                                              ),
                                            ),
                                            child: Text(buah.kalori,
                                                style: const TextStyle(
                                                    fontSize: 15)),
                                          ),
                                        ),
                                        Flexible(
                                          child: Container(
                                            padding: const EdgeInsets.only(
                                                right: 10, left: 10),
                                            decoration: BoxDecoration(
                                              color: Colors.lightBlue[50],
                                              borderRadius:
                                                  BorderRadius.circular(20),
                                              border: Border.all(
                                                color: Colors.blue,
                                              ),
                                            ),
                                            child: Text(buah.lemak,
                                                textAlign: TextAlign.center,
                                                style: const TextStyle(
                                                    fontSize: 15)),
                                          ),
                                        ),
                                        Flexible(
                                          child: Container(
                                            padding: const EdgeInsets.only(
                                                right: 10, left: 10),
                                            decoration: BoxDecoration(
                                              color: Colors.lightBlue[50],
                                              borderRadius:
                                                  BorderRadius.circular(20),
                                              border: Border.all(
                                                color: const Color.fromARGB(
                                                    255, 83, 108, 129),
                                              ),
                                            ),
                                            child: Text(buah.karbohidrat,
                                                style: const TextStyle(
                                                    fontSize: 15)),
                                          ),
                                        ),
                                        Flexible(
                                          child: Container(
                                            // ignore: prefer_const_constructors
                                            margin: EdgeInsets.all(10),
                                            padding: const EdgeInsets.only(
                                                right: 10, left: 10),
                                            decoration: BoxDecoration(
                                              color: Colors.lightBlue[50],
                                              borderRadius:
                                                  BorderRadius.circular(20),
                                              border: Border.all(
                                                color: Colors.blue,
                                              ),
                                            ),
                                            child: Text(buah.protein,
                                                style: const TextStyle(
                                                    fontSize: 15)),
                                          ),
                                        ),
                                      ]),
                                ]),
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
    );
  }
}
