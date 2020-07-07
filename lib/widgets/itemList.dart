import 'package:flutter/material.dart';

class ItemList extends StatelessWidget {
  final String image;

  final String price;

  final String title;

  final String weight;

  final bool check;

  ItemList(this.title, this.image, this.price, this.weight, this.check);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Container(
          height: 70,
          width: 70,
          decoration: BoxDecoration(
            color: Colors.grey[100],
            borderRadius: BorderRadius.circular(16),
          ),
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Image.network(this.image),
          ),
        ),
        Flexible(
          flex: 1,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 35),
            child: Column(
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Text(
                      this.title,
                      style: TextStyle(
                        color: Colors.black,
                        fontFamily: 'Helvetica-Medium',
                        fontSize: 20,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      this.weight,
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 15,
                      ),
                    ),
                    Text(
                      '\$' + this.price,
                      style: TextStyle(
                        color: Color(0xFFd9753f),
                        fontFamily: 'Helvetica-Bold',
                        fontSize: 15,
                        letterSpacing: 0.5,
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
        Container(
          height: 35,
          width: 35,
          decoration: BoxDecoration(
            color: this.check ? Color(0xFF77de5b) : Color(0xFFD9190F),
            borderRadius: BorderRadius.circular(11),
          ),
          child: Icon(
            this.check ? Icons.check : Icons.add,
            color: Colors.white,
            size: 16,
          ),
        ),
      ],
    );
  }
}
