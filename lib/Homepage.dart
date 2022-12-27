import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _HomeState();
}

class _HomeState extends State{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('ZUDIO'),),
        body: Container(
        decoration: const BoxDecoration(
        image: DecorationImage(
        fit: BoxFit.cover,
        image: NetworkImage(
        "https://thumbs.dreamstime.com/b/woman-red-dress-dance-over-storm-sky-gown-fluttering-fabric-flying-as-splash-background-137658856.jpg"))),
        )
    );
  }
}
