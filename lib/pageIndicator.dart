import 'package:flutter/material.dart';

class PageIndicator extends StatelessWidget {
  int currentIndex;
  int pageCount;
  PageIndicator({this.currentIndex,this.pageCount});
  @override
  Widget build(BuildContext context) {
   return Row(
     mainAxisAlignment: MainAxisAlignment.center,
     children: _buildPageIndicators(),
   );
  }
  _buildPageIndicators(){
    List<Widget> indicatorsList = [];
    for(int i = 0; i < pageCount; i++){
      indicatorsList.add(i == currentIndex ? _indicator(true) : _indicator(false));
    }
    return indicatorsList;
  }

  _indicator(bool isActive){
     return Container(
      margin: EdgeInsets.symmetric(horizontal: 3.0),
      height: 8.0,
      width: isActive ? 20.0: 8.0,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50.0),
        color: isActive ? Color(0xFF82D7E4) : Colors.grey.shade400,
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            offset: Offset(0.0, 2.0),
            blurRadius: 2.0,
          )
        ]
      ),
    );
  }

}