import 'package:flutter/material.dart';
import './VirtueList.dart';


class CustomDrawer extends StatelessWidget{
  @override
    Widget build(BuildContext context) {
      return Drawer(
        child: ListView(
        children: <Widget>[
          DrawerHeader(
            child: Text('Welcome'),
            decoration: BoxDecoration(
              color: Colors.blue,
            ),
          ),

          ListTile(
            title: Text('Home'),
            onTap: () {
              print(1);
              Navigator.pop(context);
            }
          ),

          ListTile(
            title: Text('Virtues'),
            onTap: () {
              var virtueListRoute = new MaterialPageRoute(
                builder: (BuildContext context) {
                  return VirtueList();
                }
              );
              
              Navigator.pop(context);
              Navigator.of(context).push(virtueListRoute);
            }
          ),
          
          ListTile(
            title: Text('Credit'),
            onTap: () {
              print(3);
              Navigator.pop(context);
            }
          ),
        ],
      ),
    );
  }
}