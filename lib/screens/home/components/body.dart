import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:my_app/constants.dart';
import 'package:my_app/screens/home/components/header_with_search_box.dart';
import 'title_with_more_btn.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // total height of screen
    Size size = MediaQuery.of(context).size;
    // will enable scrolling on small phone
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          HeaderWithSearchBox(size: size),
          TitleWithMoreBtn(title: "Recommended", press: () {}),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: <Widget>[
                RecommendPlantCard(
                  image: "assets/images/christmas2.jpg",
                  title: "New Year\n",
                  loc: "Club House",
                  datentime: "Dec 31\n 12:00am",
                  press: () {},
                ),
                RecommendPlantCard(
                  image: "assets/images/christmas1.jpg",
                  title: "Christmas\n",
                  loc: "Club House",
                  datentime: "Dec 25\n 7:00pm",
                  press: () {},
                ),
                RecommendPlantCard(
                  image: "assets/images/christmas1.jpg",
                  title: "Christmas\n",
                  loc: "Club House",
                  datentime: "Dec 25\n 7:00pm",
                  press: () {},
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class RecommendPlantCard extends StatelessWidget {
  const RecommendPlantCard({
    Key? key,
    required this.image,
    required this.title,
    required this.loc,
    required this.datentime,
    required this.press,
  }) : super(key: key);

  final String image, title, loc, datentime;
  final Function press;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.only(
        left: kDefaultPadding,
        top: kDefaultPadding / 2,
        bottom: kDefaultPadding * 2.5,
      ),
      width: size.width * 0.4,
      child: Column(
        children: <Widget>[
          ClipRRect(
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(10),
              topRight: Radius.circular(10),
            ), //add border radius
            child: Image.asset(
              image,
              height: 100.0,
              width: size.width * 0.4,
              fit: BoxFit.cover,
            ),
          ),
          // Image.asset("assets/images/christmas1.jpg"),
          // Icon(Icons.access_alarm),xtect
          GestureDetector(
            onTap: () {},
            child: Container(
              padding: EdgeInsets.all(kDefaultPadding / 2),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10),
                  // topLeft: Radius.circular(10),
                  // topRight: Radius.circular(10),
                ),
                boxShadow: [
                  BoxShadow(
                    offset: Offset(0, 10),
                    blurRadius: 50,
                    color: kPrimaryColor.withOpacity(0.23),
                  ),
                ],
              ),
              child: Row(
                children: <Widget>[
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: title.toUpperCase(),
                          // style: Theme.of(context).textTheme.button,
                          style: TextStyle(
                            fontSize: 12,
                            color: kPrimaryColor,
                          ),
                        ),
                        TextSpan(
                          text: loc.toUpperCase(),
                          style: TextStyle(
                            color: kPrimaryColor.withOpacity(0.5),
                            fontSize: 12,
                          ),
                        )
                      ],
                    ),
                  ),
                  Spacer(),
                  Text(
                    datentime,
                    style: TextStyle(fontSize: 12),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
