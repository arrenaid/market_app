import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:market_app/constants.dart';
import 'package:market_app/screens/home/components/recomends_plants.dart';

import 'featured_plants.dart';
import 'header.dart';
import 'title_with_more_btn.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        children: [
          HeaderWithSearchBox(size: size,),
          TitleWithMoreBtn(title: "Recomended", pressF: () {}),
          RecomendsPlants(),
          TitleWithMoreBtn(title: "Featured Plants", pressF: () {}),
          FeaturedPlants(),
          SizedBox(height: kDefaultPadding,),
        ],
      ),
    );
  }
}
