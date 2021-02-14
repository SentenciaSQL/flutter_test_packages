import 'package:flutter/material.dart';
import 'package:intro_slider/intro_slider.dart';
import 'package:intro_slider/slide_object.dart';

class DefalultSliderPage extends StatefulWidget {
  @override
  _DefalultSliderPageState createState() => _DefalultSliderPageState();
}

class _DefalultSliderPageState extends State<DefalultSliderPage> {
  List<Slide> slides = new List();

  @override
  void initState() {
    super.initState();
    _createSlider();
  }

  void onDonePress() {

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Default config'),
      ),
      body: IntroSlider(
        slides: slides,
        onDonePress: onDonePress,
      )
    );
  }

  void _createSlider() {
    slides.add(
      new Slide(
        title: 'ERASER',
        description: 'Allow miles wound place the leave had. To sitting subject no improve studied limited',
        pathImage: 'assets/photo_eraser.png',
        backgroundColor: Color(0xfff5a623)
      )
    );
    slides.add(
      new Slide(
        title: 'PENCIL',
        description: 'Ye indulgence unreserved connection alteration appearance',
        pathImage: 'assets/photo_pencil.png',
        backgroundColor: Color(0xff203152)
      )
    );
    slides.add(
      new Slide(
        title: 'RULER',
        description: 'Much evil soon high in hope do view. Out may few northward believing attempted. Yet timed being songs marry one defer men our. Although finished blessing do of',
        pathImage: 'assets/photo_ruler.png',
        backgroundColor: Color(0xff9932CC)
      )
    );
  }
}

