import 'package:flutter/material.dart';
import 'package:market_app/constants.dart';

class MyBNB extends StatelessWidget {
  const MyBNB({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        left: kDefaultPadding *2,
        right: kDefaultPadding *2,
        bottom: kDefaultPadding,
      ),
      height: 80,
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            offset: Offset(0, -10),
            blurRadius: 35,
            color: kPrimaryColor,
          )
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(onPressed: () {}, icon:  Icon(Icons.animation)),
          IconButton(onPressed: () {}, icon:  Icon(Icons.face)),
          IconButton(onPressed: () {}, icon:  Icon(Icons.gamepad)),
        ],
      ),
    );
  }
}
