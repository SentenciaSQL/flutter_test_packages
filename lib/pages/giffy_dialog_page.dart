import 'package:flutter/material.dart';
import 'package:flutter_test_packages/widgets/menu_widget.dart';
import 'package:giffy_dialog/giffy_dialog.dart';

class GiffyDialogPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Giffy Dialog Page'),
      ),
      drawer: WidgetMenu(),
      body: Center(
        child: _createButtons(context),
      ),
    );
  }

  Widget _createButtons(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ButtonTheme(
          minWidth: 200.0,
          height: 40.0,
          child: RaisedButton(
            color: Colors.teal,
            child: Text('Network Giffy', style: TextStyle(color: Colors.white)),
            onPressed: () => _network(context),
          ),
        ),
        ButtonTheme(
          minWidth: 200.0,
          height: 40.0,
          child: RaisedButton(
            color: Colors.indigo,
            child: Text('Flare Giffy', style: TextStyle(color: Colors.white)),
            onPressed: () => _flare(context),
          ),
        ),
        ButtonTheme(
          minWidth: 200.0,
          height: 40.0,
          child: RaisedButton(
            color: Colors.purpleAccent,
            child: Text('Asset Giffy', style: TextStyle(color: Colors.white)),
            onPressed: () => _asset(context),
          ),
        )
      ],
    );
  }

  void _network(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) => NetworkGiffyDialog(
        image: Image.network(
          "https://raw.githubusercontent.com/Shashank02051997/FancyGifDialog-Android/master/GIF's/gif14.gif",
          fit: BoxFit.cover,
        ), 
        title: Text('Granny Eating Chocolate', style: TextStyle(fontSize: 22.0, fontWeight: FontWeight.w600), textAlign: TextAlign.center),
        description: Text('This is a granny eating chocolate dialog box. This library helps you easily create fancy giffy dialog.', textAlign: TextAlign.center),
        onOkButtonPressed: () {

        },
      ),
    );
  }

  void _flare(BuildContext context){
    showDialog(
      context: context,
      builder: (context) => FlareGiffyDialog(
        flarePath: 'assets/space_demo.flr',
        flareAnimation: 'loading',
        title: Text('Space Reloading', textAlign: TextAlign.center, style: TextStyle(fontSize: 22.0, fontWeight: FontWeight.w600)),
        entryAnimation: EntryAnimation.DEFAULT,
        description: Text(
          'This is a space reloading dialog box. This library helps you easily create fancy flare dialog.',
          textAlign: TextAlign.center,
          style: TextStyle(),
        ),
        onOkButtonPressed: () {},
      ),
    );
  }

  void _asset(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) => AssetGiffyDialog(
        image: Image.asset(
          'assets/men_wearing_jacket.gif',
          fit: BoxFit.cover,
        ), 
        title: Text('Men Wearing Jackets', textAlign: TextAlign.center, style: TextStyle(fontSize: 22.0, fontWeight: FontWeight.w600)),
        entryAnimation: EntryAnimation.BOTTOM_RIGHT,
        description: Text(
          'This is a men wearing jackets dialog box. This library helps you easily create fancy giffy dialog.',
          textAlign: TextAlign.center,
          style: TextStyle(),
        ),
        onOkButtonPressed: () {},
      ),
    );
  }
}
