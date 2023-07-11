import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

enum CardType {
  Github,
  AddText,
  LinkedIn,
  Layers,
  Dribble,
  Figma,
  ProductHunt,
  Instagram,
  Twitter,
}

class CustomCard extends StatelessWidget {
  final CardType cardType;

  const CustomCard({Key? key, required this.cardType}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screen_height = MediaQuery.of(context).size.height;
    double screen_width = MediaQuery.of(context).size.width;

    switch (cardType) {
      case CardType.Github:
        return Container(

          decoration: BoxDecoration(
            border: Border.all(
                width: 2.5,
                color: Color(0xFFEBEBEB)),
            borderRadius: BorderRadius.circular(screen_width*0.006),
          ),
          height: screen_height*0.05,
          width: screen_width*0.4,
          color: Colors.blue,
          margin: EdgeInsets.all(8.0),
          child: Center(
            child: Text(
              'Github Card',
              style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
            ),
          ),
        );
      case CardType.AddText:
        return Container(

          decoration: BoxDecoration(
            border: Border.all(
                width: 2.5,
                color: Color(0xFFEBEBEB)),
            borderRadius: BorderRadius.circular(screen_width*0.006),
          ),
          height: screen_height*0.05,
          width: screen_width*0.4,
          margin: EdgeInsets.all(8.0),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                SvgPicture.asset('assets/images/github.svg'),
              ],
            ),
          ),
        );
      case CardType.LinkedIn:
        return Container(

          decoration: BoxDecoration(
            border: Border.all(
                width: 2.5,
                color: Color(0xFFEBEBEB)),
            borderRadius: BorderRadius.circular(screen_width*0.006),
          ),
          height: screen_height*0.05,
          width: screen_width*0.4,
          color: Colors.blue,
          margin: EdgeInsets.all(8.0),
          child: Center(
            child: Text(
              'Github Card',
              style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
            ),
          ),
        );
      case CardType.Layers:

        return Container(

          decoration: BoxDecoration(
            border: Border.all(
                width: 2.5,
                color: Color(0xFFEBEBEB)),
            borderRadius: BorderRadius.circular(screen_width*0.006),
          ),
          height: screen_height*0.05,
          width: screen_width*0.4,
          color: Colors.blue,
          margin: EdgeInsets.all(8.0),
          child: Center(
            child: Text(
              'Github Card',
              style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
            ),
          ),
        );

      case CardType.LinkedIn:

        return Container(

          decoration: BoxDecoration(
            border: Border.all(
                width: 2.5,
                color: Color(0xFFEBEBEB)),
            borderRadius: BorderRadius.circular(screen_width*0.006),
          ),
          height: screen_height*0.05,
          width: screen_width*0.4,
          color: Colors.blue,
          margin: EdgeInsets.all(8.0),
          child: Center(
            child: Text(
              'Github Card',
              style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
            ),
          ),
        );
      case CardType.AddText:

        return Container(

          decoration: BoxDecoration(
            border: Border.all(
                width: 2.5,
                color: Color(0xFFEBEBEB)),
            borderRadius: BorderRadius.circular(screen_width*0.006),
          ),
          height: screen_height*0.05,
          width: screen_width*0.4,
          color: Colors.blue,
          margin: EdgeInsets.all(8.0),
          child: Center(
            child: Text(
              'Github Card',
              style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
            ),
          ),
        );


      default:
        return Container();
    }
  }
}