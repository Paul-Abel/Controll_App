import 'package:flutter/material.dart';

import 'PageViewerManager.dart';


class Led extends StatelessWidget {
  int zahl=2;

  Led(this.zahl);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Led'),
      ),
      body: Center(
        child: Column(
          children: [
            Text(zahl.toString()),
            ElevatedButton(
              child: Text("Add Television"),
              onPressed: (){
                addTelevision();
              },
            ) ,
          ],
        )
      ),
    );
  }
}