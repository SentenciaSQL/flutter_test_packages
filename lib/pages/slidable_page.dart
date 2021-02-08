import 'dart:math';

import 'package:flutter/material.dart';

import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:flutter_test_packages/widgets/menu_widget.dart';

class SlidablePage extends StatefulWidget {
  @override
  _SlidablePageState createState() => _SlidablePageState();
}

class _SlidablePageState extends State<SlidablePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Slidable Demo'),
      ),
      drawer: WidgetMenu(),
      body: ListView.builder(
        itemCount: 100,
        itemBuilder: (context, index) {
          return _slidableOptions(index + 1);
        },
      )
    );
  }

  Widget _slidableOptions(int index) {
    final randomColor = RandomHexColor();
    print(randomColor.colorRandom());

    return Slidable(
      key: ValueKey(index),
      actionPane: SlidableDrawerActionPane(),
      actionExtentRatio: 0.25,
      child: Container(
        color: Colors.white,
        child: ListTile(
          leading: CircleAvatar(
            backgroundColor: randomColor.colorRandom(),
            child: Text('$index'),
            foregroundColor: Colors.white,
          ),
          title: Text('Tile n° $index'),
          subtitle: Text('SlidableDrawerDelegate'),
        ),
      ),
      actions: [
        IconSlideAction(
          caption: 'Archive',
          color: Colors.blue,
          icon: Icons.archive,
          onTap: () => print('Archive'),
        ),
        IconSlideAction(
          caption: 'Share',
          color: Colors.indigo,
          icon: Icons.share,
          onTap: () => print('Share'),
        ),
      ],
      secondaryActions: [
        IconSlideAction(
          caption: 'More',
          color: Colors.black45,
          icon: Icons.more_horiz,
          onTap: () => print('More')
        ),
         IconSlideAction(
          caption: 'Delete',
          color: Colors.red,
          icon: Icons.delete,
          onTap: () => print('Delete')
        )
      ],
    );
  }
}

class RandomHexColor {
  static const Color one = Color(0xff006d80);
  static const Color two = Color(0xff028000);
  static const Color three = Color(0xff028000);
  static const Color four = Color(0xff800000);
  static const Color five = Color(0xff6d8000);
  static const Color six = Color(0xff370080);

  List<Color> hexColor = [one, two, three, four, five, six];

  static final _random = Random();

  Color colorRandom() {
    return hexColor[_random.nextInt(6)];
  }
}