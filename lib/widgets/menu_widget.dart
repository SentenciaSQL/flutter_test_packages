import 'package:flutter/material.dart';

class WidgetMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    final String pageRoute = ModalRoute.of(context).settings.name;

    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          Container(
            height: 91.0,
            child: DrawerHeader(
              child: Container(),
              decoration: BoxDecoration(
                color: Colors.blue
              ),
            ),
          ),
          ListTile(
            title: Text('Fl Chart'),
            onTap: () => ('fl_chart' != pageRoute) ? Navigator.pushReplacementNamed(context, 'fl_chart'): null,
          ),
          ListTile(
            title: Text('Slidable'),
            onTap: () => ('slidable' != pageRoute) ? Navigator.pushReplacementNamed(context, 'slidable'): null,
          ),
          ListTile(
            title: Text('Giffy Dialog'),
            onTap: () => ('giffy_dialog' != pageRoute) ? Navigator.pushReplacementNamed(context, 'giffy_dialog'): null,
          ),
          ListTile(
            title: Text('Bottom Navy'),
            onTap: () => ('bottom_navy' != pageRoute) ? Navigator.pushReplacementNamed(context, 'bottom_navy'): null,
          ),
          ListTile(
            title: Text('Liquid Swipe'),
            onTap: () => ('liquid_swipe' != pageRoute) ? Navigator.pushReplacementNamed(context, 'liquid_swipe'): null,
          ),
          ListTile(
            title: Text('Before After'),
            onTap: () => ('before_after' != pageRoute) ? Navigator.pushReplacementNamed(context, 'before_after'): null,
          ),
        ],
      ),
    );
  }
}
