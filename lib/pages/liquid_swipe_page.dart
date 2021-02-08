import 'package:flutter/material.dart';
import 'package:flutter_test_packages/widgets/menu_widget.dart';
import 'package:liquid_swipe/liquid_swipe.dart';

class LiquidSwipePage extends StatefulWidget {
  @override
  _LiquidSwipePageState createState() => _LiquidSwipePageState();
}

class _LiquidSwipePageState extends State<LiquidSwipePage> {

  int page = 0;
  LiquidController liquidController;
  UpdateType updateType;

  @override
  void initState() {
    liquidController = LiquidController();
    super.initState();
  }

  final pages = [
    Container(color: Colors.pink, child: Center(child: Text('Hola'))),
    Container(color: Colors.deepPurpleAccent, child: Center(child: Text('Mundo'))),
    Container(color: Colors.greenAccent, child: Center(child: Text('Adios'))),
    Container(color: Colors.yellowAccent, child: Center(child: Text('Mundo')))
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Liquid Swipe Page'),
      ),
      drawer: WidgetMenu(),
      body: Stack(
        children: [
          LiquidSwipe(
            pages: pages,
            onPageChangeCallback: pageChangeCallback,
            waveType: WaveType.liquidReveal,
            liquidController: liquidController,
            ignoreUserGestureWhileAnimating: true,
          )
        ],
      )
    );
  }

  pageChangeCallback(int lpage) {
    setState(() {
      page = lpage;
    });
  }
}
