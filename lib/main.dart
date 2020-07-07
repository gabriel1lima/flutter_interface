import 'package:flutter/material.dart';
import 'package:test_interface/widgets/cardItem.dart';
import 'package:test_interface/widgets/itemList.dart';

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
      theme: ThemeData(
        fontFamily: 'Helvetica-Regular',
        primarySwatch: Colors.red,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    final double statusBarHeight = MediaQuery.of(context).padding.top;
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomCenter,
            colors: [
              Color(0xFFD9190F),
              // Colors.red[400],
              Color(0xFFF58577),
            ],
          ),
        ),
        child: Padding(
          padding: new EdgeInsets.only(top: statusBarHeight),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                height: height * 0.3,
                child: Padding(
                  padding: new EdgeInsets.only(top: 20, left: 20, right: 20),
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
                                '2',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                      SizedBox(height: 25),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text(
                            'Food',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 30,
                            ),
                          ),
                          Icon(
                            Icons.search,
                            color: Colors.white,
                            size: 25.0,
                          )
                        ],
                      ),
                      SizedBox(height: 25),
                      Flexible(
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: <Widget>[
                            CardItem('pizza.png', 'Pizza', true),
                            CardItem('burger.png', 'Burger', false),
                            CardItem('hot-dog.png', 'Hotdog', false),
                            CardItem('fries.png', 'Fast food', false),
                            CardItem('ice-cream.png', 'Ice cream', false),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                height: (height * 0.70) - statusBarHeight,
                width: double.infinity,
                child: Padding(
                  padding: new EdgeInsets.only(left: 12, right: 12, top: 12),
                  child: Stack(
                    children: <Widget>[
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(35),
                            topRight: Radius.circular(35),
                          ),
                        ),
                        child: Padding(
                          padding:
                              new EdgeInsets.only(top: 30, left: 23, right: 23),
                          child: Column(
                            children: <Widget>[
                              Row(
                                children: <Widget>[
                                  Text(
                                    'Menu',
                                    textAlign: TextAlign.right,
                                    style: TextStyle(
                                      fontFamily: 'Helvetica-Bold',
                                      color: Color(0xFF000000),
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: 20),
                              ItemList(
                                'Brooklyn',
                                'https://i.pinimg.com/originals/c9/57/80/c957805c620f8ec9ffe7e365674dc659.png',
                                '8.00',
                                '350g',
                                true,
                              ),
                              SizedBox(height: 25),
                              ItemList(
                                'New York',
                                'https://static.expressodelivery.com.br/imagens/produtos/47476/180/Expresso-Delivery_b626c98d1108e969c9ac1a37a087b26d.png',
                                '5.00',
                                '250g',
                                false,
                              ),
                              SizedBox(height: 25),
                              ItemList(
                                'Dallas',
                                'https://bupaqe.com/wp-content/uploads/2017/05/cardapio_sanduiche_02.png',
                                '7.00',
                                '300g',
                                false,
                              ),
                              SizedBox(height: 25),
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        height: 4,
                        top: 20,
                        left: (width / 2) - 27,
                        child: Container(
                          height: 4,
                          width: 27,
                          decoration: BoxDecoration(
                            color: Colors.grey[300],
                            borderRadius: BorderRadius.circular(3),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
