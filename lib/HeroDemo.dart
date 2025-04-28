import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HeroDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Hero Animation')),
    body: Center(
    child: Hero(
    tag: 'rocket',
    child: IconButton(
    icon: Icon(Icons.rocket, size: 50),
    onPressed: () => Navigator.push(
    context,
    MaterialPageRoute(
    builder: (context) => Scaffold(
    appBar: AppBar(),
    body: Center(
    child: Hero(
    tag: 'rocket',
    child: Icon(Icons.rocket, size: 200),
    ),
    ),
    ))),
    )),
    ));
  }
}