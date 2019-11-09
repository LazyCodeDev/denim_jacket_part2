import 'package:flutter/material.dart';
import 'package:girly_app/pageIndicator.dart';

import 'data.dart';
import 'productCard.dart';
import 'selector.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Girly App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  PageController pageController;
  int _currentIndex = 0;

  @override
  void initState() {
    pageController = PageController(viewportFraction: .7);
    // TODO: implement initState
    super.initState();
  }
  @override
  void dispose() {
    // TODO: implement dispose
    pageController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Container(
          height: MediaQuery.of(context).size.height,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Container(
                  height: 80.0,
                  padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 5.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        "Girly",
                        style: TextStyle(
                          fontSize: 48.0,
                          fontWeight: FontWeight.w400,
                          fontFamily: "Woolworth"
                        ),
                      ),
                      Container(
                        height: 50.0,
                        width: 50.0,
                        decoration: BoxDecoration(
                          color: Color(0xFFE3EBF3),
                          borderRadius: BorderRadius.circular(20.0)
                        ),
                        child: Icon(
                          Icons.perm_identity,
                          color: Colors.grey.shade400,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20.0,),
                Container(
                  height: 30.0,
                  margin: EdgeInsets.symmetric(horizontal: 25.0,vertical: 5.0),
                  child: Selector(
                    selectors:["All","Shirt","Skirt","Trouseau"]
                  ),
                ),
                SizedBox(height: 25.0,),
                Stack(
                  children: <Widget>[
                    Container(
                      height: MediaQuery.of(context).size.height * .55,
                      child: PageView.builder(
                        controller: pageController,
                        itemCount: pageList.length,
                        onPageChanged: (int page){
                          setState(() {
                            _currentIndex = page;
                          });
                        },
                        itemBuilder: (BuildContext context , int index){
                          return ProductCard(
                            cardNum: index,
                            product: pageList[index],
                          );
                        },
                      ),
                    )
                  ],
                ),
                Container(
                  height: 30.0,
                  width: MediaQuery.of(context).size.width,
                  child: PageIndicator(
                    currentIndex: _currentIndex,
                    pageCount: pageList.length,
                  ),
                ),
                Container(
                  height: 30.0,
                  margin: EdgeInsets.only(left: 20.0,bottom: 15.0),
                  width: MediaQuery.of(context).size.width,
                  child: Text(
                    "Popular",
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 24.0
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 20.0,right: 20.0),
                  height: 100.0,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(25.0),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black12,
                        offset: Offset(0, 5.0),
                        blurRadius: 10.0
                      )
                    ],
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.only(left: 10.0),
                        height: 80.0,
                        width: 80.0,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('assets/images/3.jpg'),
                            fit: BoxFit.cover
                          ),
                          borderRadius: BorderRadius.circular(10.0)
                        ),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width * .5,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              "Lettuce Trim",
                              style:TextStyle(
                                fontSize:18.0,
                                fontWeight:FontWeight.w600
                              ),
                            ),
                            SizedBox(height: 5.0,),
                            Text(
                              "Red, Bright",
                              style:TextStyle(
                                fontSize:14.0,
                                color:Colors.grey.shade500,
                                fontWeight: FontWeight.w600
                              ),
                            ),
                            SizedBox(height: 5.0,),
                            Text(
                              "\$50",
                              style: TextStyle(
                                fontSize: 14.0,
                                fontWeight: FontWeight.w700
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(5.0),
                        child: IconButton(
                          onPressed: (){},
                          icon:Icon(Icons.favorite,color: Colors.grey.shade200,size: 35.0,)
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 10.0,),
                Container(
                  margin: EdgeInsets.only(left: 20.0,right: 20.0),
                  height: 100.0,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(25.0),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black12,
                        offset: Offset(0, 5.0),
                        blurRadius: 10.0
                      )
                    ],
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.only(left: 10.0),
                        height: 80.0,
                        width: 80.0,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('assets/images/4.jpg'),
                            fit: BoxFit.cover
                          ),
                          borderRadius: BorderRadius.circular(10.0)
                        ),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width * .5,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              "Drop Shoulder Pullover",
                              style:TextStyle(
                                fontSize:18.0,
                                fontWeight:FontWeight.w600
                              ),
                            ),
                            SizedBox(height: 5.0,),
                            Text(
                              "Blue",
                              style:TextStyle(
                                fontSize:14.0,
                                color:Colors.grey.shade500,
                                fontWeight: FontWeight.w600
                              ),
                            ),
                            SizedBox(height: 5.0,),
                            Text(
                              "\$89.50",
                              style: TextStyle(
                                fontSize: 14.0,
                                fontWeight: FontWeight.w700
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(5.0),
                        child: IconButton(
                          onPressed: (){},
                          icon:Icon(Icons.favorite,color: Colors.grey.shade200,size: 35.0,)
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
