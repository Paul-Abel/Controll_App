import 'package:controll_app/Led.dart';
import 'package:flutter/material.dart';

import 'PageViewerManager.dart';

class Television extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Television"),
      ),
      body: Center(
        child: ElevatedButton(
          child: Text("Add Led"),
          onPressed: (){
            addPages(Led());
          },
        ) ,

      ),
    );
  }
}