import 'package:flutter/material.dart';
import 'package:market_app/constants.dart';
class IconCard extends StatelessWidget {
  const IconCard({
    Key? key, required this.icon,
  }) : super(key: key);

  final Icon icon;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: 62,
      width: 62,
      margin: EdgeInsets.symmetric(vertical: size.height * 0.03),
      padding: EdgeInsets.all(kDefaultPadding /2 ),
      decoration: BoxDecoration(
          color: kBackgroundColor,
          borderRadius: BorderRadius.circular(6),
          boxShadow: [
            BoxShadow(
                offset: Offset(0,15),
                blurRadius: 22,
                color: kPrimaryColor.withOpacity(0.33)
            ),
            BoxShadow(
                offset: Offset(-15,-15),
                blurRadius: 20,
                color: Colors.white.withOpacity(0.33)
            ),
          ]
      ),
      child: icon,
    );
  }
}
