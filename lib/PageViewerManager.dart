import 'package:flutter/material.dart';

import 'Led.dart';
import 'Television.dart';

List<StatelessWidget> myPages = [Led(0), Television(1),];
int pageCounter = 0;

void addLed(){
  pageCounter++;
  myPages.add(Led(pageCounter));
}

void addTelevision(){
  pageCounter++;
  myPages.add(Television(pageCounter));
}

class PageViewerManager extends StatefulWidget{
  @override
  PageViewer createState() => PageViewer();
}



class PageViewer extends State<PageViewerManager>{
  PageController _controller = PageController(
    initialPage: 0,
    viewportFraction: 0.8,
  );



  void  dispose(){
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: _controller,
      scrollDirection: Axis.horizontal,
      children: myPages,
    );
  }
}