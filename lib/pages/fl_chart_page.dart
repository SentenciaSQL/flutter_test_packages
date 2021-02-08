import 'package:flutter/material.dart';
import 'package:flutter_test_packages/charts/bar_chart/bar_chart_page.dart';
import 'package:flutter_test_packages/charts/bar_chart/bar_chart_page2.dart';
import 'package:flutter_test_packages/charts/line_chart/line_chart_page.dart';
import 'package:flutter_test_packages/charts/line_chart/line_chart_page2.dart';
import 'package:flutter_test_packages/charts/line_chart/line_chart_page3.dart';
import 'package:flutter_test_packages/charts/line_chart/line_chart_page4.dart';
import 'package:flutter_test_packages/charts/pie_chart/pie_chart_page.dart';
import 'package:flutter_test_packages/charts/scatter_chart/scatter_chart_page.dart';
import 'package:flutter_test_packages/widgets/menu_widget.dart';

class FlChartPage extends StatefulWidget {
  @override
  _FlChartPageState createState() => _FlChartPageState();
}

class _FlChartPageState extends State<FlChartPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Fl Charts'),
      ),
      drawer: WidgetMenu(),
      body: SafeArea(
        child: PageView(
          children: [
            LineChartPage(),
            BarChartPage(),
            BarChartPage2(),
            PieChartPage(),
            LineChartPage2(),
            LineChartPage3(),
            LineChartPage4(),
            ScatterChartPage()
          ],
        ),
      )
    );
  }
}
