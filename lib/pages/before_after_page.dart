import 'package:flutter/material.dart';
import 'package:before_after/before_after.dart';
import 'package:flutter_test_packages/widgets/menu_widget.dart';

class BeforeAfterPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Before After Page'),
      ),
      drawer: WidgetMenu(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _expanded('after.jpg', 'before.jpg', false),
            _expanded('after.png', 'before.png', true),
          ],
        )
      ),
    );
  }

  Widget _expanded(String image1, String image2, bool vertical) {
    return Expanded(
      flex: 1,
      child: BeforeAfter(
        beforeImage: Image.asset('assets/$image1'),
        afterImage: Image.asset('assets/$image2'),
        isVertical: vertical,
      ),
    );
  }
}
