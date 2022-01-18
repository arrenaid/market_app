import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:market_app/constants.dart';
import 'image_and_icons.dart';
import 'title_and_price.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: [
          ImageAndIcons(size: size),
          TitleAndPrice(
            title: "Moon",
            country: "Russia",
            price: 330,
          ),
          Row(
            children: [
              SizedBox(
                width: size.width/2,
                height: 84,
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text("By now", style: TextStyle(
                    color: Colors.white, fontSize: 16,
                  ),),
                  style: ElevatedButton.styleFrom(
                    primary: kPrimaryColor,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(20),
                        ),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text("Description", style: TextStyle(
                    color: kPrimaryColor, fontSize: 16,
                  ),),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
          //SizedBox(height: kDefaultPadding * 2),
        ],
      ),
    );
  }
}
