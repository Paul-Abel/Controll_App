import 'package:flutter/material.dart';

import 'PageViewerManager.dart';
import 'Television.dart';

class Led extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Led'),
      ),
      body: Center(
        child: ElevatedButton(
          child: Text("Add Television"),
          onPressed: (){
            addPages(Television());
          },
        ) ,

      ),
    );
  }
}