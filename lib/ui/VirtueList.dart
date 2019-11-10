import 'package:flutter/material.dart';

class VirtueList extends StatefulWidget {
    _VirtueListState createState() => _VirtueListState();
}

class _VirtueListState extends State<VirtueList> {
  List virtues = ['Love', 'Unity', 'Peace'];
  @override

    build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(
          title: Text("Virtues List"),
        ),

        body: ListView.builder(
          itemCount: virtues.length,
          itemBuilder: (BuildContext context, int pos) {
            return ListTile(
              title: new Text("${virtues[pos]}"),
            );
          }
        )
      );
    }
}