import 'package:flutter/material.dart';

class IntroSliderPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Intro Slider'),
      ),
      body: Center(
        child: _createBotones(context),
      ),
    );
  }

  Widget _createBotones(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ButtonTheme(
          minWidth: 200.0,
          height: 40.0,
          child: RaisedButton(
            color: Colors.teal,
            child: Text('Default config', style: TextStyle(color: Colors.white)),
            onPressed: () => Navigator.pushNamed(context, 'default')
          ),
        ),
        ButtonTheme(
          minWidth: 200.0,
          height: 40.0,
          child: RaisedButton(
            color: Colors.indigo,
            child: Text('Custom config', style: TextStyle(color: Colors.white)),
            onPressed: () => Navigator.pushNamed(context, 'custom_slider')
          ),
        ),
        ButtonTheme(
          minWidth: 200.0,
          height: 40.0,
          child: RaisedButton(
            color: Colors.deepPurple,
            child: Text('Custom your own tabs', style: TextStyle(color: Colors.white)),
            onPressed: () => Navigator.pushNamed(context, 'custom_tab_slider')
          ),
        )
      ],
    );
  }
}
