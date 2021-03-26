import 'package:flutter/material.dart';

import 'Led.dart';
import 'Television.dart';

List<StatelessWidget> myPages = [Led(), Television(), Led(), Led()];

void addPages(StatelessWidget page){
  myPages.add(page);
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