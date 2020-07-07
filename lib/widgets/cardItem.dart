import 'package:flutter/material.dart';

class CardItem extends StatelessWidget {
  final String imageIcon;

  final bool isSelected;

  CardItem(this.imageIcon, this.isSelected);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: new EdgeInsets.only(right: 30.0),
      child: Column(
        children: <Widget>[
          SizedBox(
            height: 58,
            width: 58,
            child: Container(
                decoration: BoxDecoration(
                  color: this.isSelected ? Colors.white : Colors.black12,
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Image(
                    image: AssetImage(
                      this.imageIcon,
                    ),
                  ),
                )),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            'Pizza',
            style: TextStyle(color: Colors.white),
          )
        ],
      ),
    );
  }
}
