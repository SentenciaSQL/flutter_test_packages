import 'package:flutter/material.dart';
import 'package:flutter_test_packages/pages/before_after_page.dart';
import 'package:flutter_test_packages/pages/bottom_navy_page.dart';
import 'package:flutter_test_packages/pages/fl_chart_page.dart';
import 'package:flutter_test_packages/pages/giffy_dialog_page.dart';
import 'package:flutter_test_packages/pages/intro_slider/custom_slider_page.dart';
import 'package:flutter_test_packages/pages/intro_slider/custom_tab_slider_page.dart';
import 'package:flutter_test_packages/pages/intro_slider/default_slider_page.dart';
import 'package:flutter_test_packages/pages/intro_slider_page.dart';
import 'package:flutter_test_packages/pages/liquid_swipe_page.dart';
import 'package:flutter_test_packages/pages/slidable_page.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      initialRoute: 'fl_chart',
      routes: {
        'slidable': ( _ ) => SlidablePage(),
        'giffy_dialog': ( _ ) => GiffyDialogPage(),
        'bottom_navy': ( _ ) => BottomNavyPage(),
        'liquid_swipe': ( _ ) => LiquidSwipePage(),
        'before_after': ( _ ) => BeforeAfterPage(),
        'fl_chart': ( _ ) => FlChartPage(),
        'intro_slider': ( _ ) => IntroSliderPage(),
        'default': ( _ ) => DefalultSliderPage(),
        'custom_slider' : ( _ ) => CustomSliderPage(),
        'custom_tab_slider': ( _ ) => CustomTabSliderPage() 
      },
    );
  }
}