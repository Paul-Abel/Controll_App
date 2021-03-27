import 'package:flutter/material.dart';

import 'PageViewerManager.dart';

class Television extends StatelessWidget {
  final int zahl;

  Television(this.zahl);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Television"),
      ),
      body: Center(
        child: Column(
          children:<Widget> [
            Text(zahl.toString()),
            ElevatedButton(
              child: Text("Add Led"),
              onPressed: (){
                addLed();
              },
            ) ,
          ],
        ),
      ),
    );
  }
}