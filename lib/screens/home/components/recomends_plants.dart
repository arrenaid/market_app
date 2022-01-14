import 'package:flutter/material.dart';
import 'package:market_app/constants.dart';

class RecomendsPlants extends StatelessWidget {
  const RecomendsPlants({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          RecomendPlantCard(
            image: "assets/images/moon.jpg",
            title: "Moon",
            country: "Russia",
            price: 850,
            tap: () {},
          ),
          RecomendPlantCard(
            image: "assets/images/star.jpg",
            title: "Star",
            country: "Russia",
            price: 850,
            tap: () {},
          ),
          RecomendPlantCard(
            image: "assets/images/saturn.jpg",
            title: "Saturn",
            country: "Russia",
            price: 850,
            tap: () {},
          ),
        ],
      ),
    );
  }
}

class RecomendPlantCard extends StatelessWidget {
  const RecomendPlantCard({
    Key? key,
    required this.image,
    required this.title,
    required this.country,
    required this.price,
    required this.tap,
  }) : super(key: key);

  final String image, title, country;
  final double price;
  final VoidCallback tap;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.only(
        left: kDefaultPadding,
        top: kDefaultPadding / 2,
        bottom: kDefaultPadding *2.5,
      ),
      width: size.width * 0.4,
      child: Column(
        children: [
          Image.asset(image),
          GestureDetector(
            onTap: tap,
            child: Container(
              padding: EdgeInsets.all(kDefaultPadding / 2),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(10),
                    bottomRight: Radius.circular(10)),
                boxShadow: [
                  BoxShadow(
                    offset: Offset(0, 30),
                    blurRadius: 50,
                    color: kPrimaryColor.withOpacity(0.23),
                  ),
                ],
              ),
              child: Row(
                children: [RichText(text: TextSpan(
                    children:[
                      TextSpan(
                        text: "$title\n".toUpperCase(),
                        style: Theme.of(context).textTheme.button,
                      ),
                      TextSpan(
                        text: "$country".toUpperCase(),
                        style: TextStyle(color: kPrimaryColor.withOpacity(0.5)),
                      ),
                    ]
                ),
                ),
                  Spacer(),
                  Text('$price',
                    style: Theme.of(context).textTheme.button!.copyWith(
                        color: kPrimaryColor),)
                ],
              ),
            ),
          )

        ],
      ),
    );
  }
}
