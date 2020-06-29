import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final double statusBarHeight = MediaQuery.of(context).padding.top;
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Colors.red,
              Colors.red[400],
              Colors.red[200],
            ],
          ),
        ),
        child: Padding(
          padding: new EdgeInsets.only(top: statusBarHeight),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: new EdgeInsets.all(20.0),
                child: Container(
                  height: height * 0.3,
                  // decoration: BoxDecoration(
                  //   border: Border.all(
                  //     width: 2.0,
                  //     color: Colors.green,
                  //   ),
                  // ),
                  child: Column(
                    children: <Widget>[
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Icon(
                            Icons.menu,
                            color: Colors.white,
                            size: 25.0,
                          ),
                          Row(
                            children: <Widget>[
                              Container(
                                margin: new EdgeInsets.only(right: 5),
                                child: Icon(
                                  Icons.shopping_cart,
                                  color: Colors.white,
                                  size: 25.0,
                                ),
                              ),
                              Text(
                                '1',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                      SizedBox(
                        height: 30.0,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text(
                            'Food',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 30.0,
                            ),
                          ),
                          Icon(
                            Icons.search,
                            color: Colors.white,
                            size: 25.0,
                          )
                        ],
                      ),
                      SizedBox(
                        height: 30.0,
                      ),
                      Flexible(
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: <Widget>[
                            Container(
                              margin: new EdgeInsets.only(right: 20.0),
                              child: Column(
                                children: <Widget>[
                                  SizedBox(
                                    height: 70,
                                    width: 70,
                                    child: Container(
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(14),
                                      ),
                                      child: Icon(
                                        Icons.fastfood,
                                        color: Colors.red,
                                        size: 28.0,
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    'Burger',
                                    style: TextStyle(color: Colors.white),
                                  )
                                ],
                              ),
                            ),
                            Container(
                              margin: new EdgeInsets.only(right: 20.0),
                              child: Column(
                                children: <Widget>[
                                  SizedBox(
                                    height: 70,
                                    width: 70,
                                    child: Container(
                                      decoration: BoxDecoration(
                                        color: Colors.red[600],
                                        borderRadius: BorderRadius.circular(14),
                                      ),
                                      child: Icon(
                                        Icons.local_pizza,
                                        color: Colors.white,
                                        size: 28.0,
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    'Pizzas',
                                    style: TextStyle(color: Colors.white),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      // Row(
                      //   children: <Widget>[

                      //   ],
                      // )
                    ],
                  ),
                ),
              ),
              Padding(
                padding: new EdgeInsets.only(left: 10, right: 10, top: 10),
                child: Container(
                  height: (height * 0.70) - 20 - 20 - statusBarHeight - 10,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(35),
                      topRight: Radius.circular(35),
                    ),
                    // border: Border.all(
                    //   width: 2.0,
                    //   color: Colors.green,
                    // ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
