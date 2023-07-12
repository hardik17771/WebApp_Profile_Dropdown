import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

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
  final String link;

  const CustomCard({Key? key, required this.cardType, required this.link}) : super(key: key);

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
          height: screen_height*0.15,
          width: screen_width*0.1,
          margin: EdgeInsets.all(8.0),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                SvgPicture.asset('images/github.svg'),

                Text(link,
                  style: GoogleFonts.inter(
                    fontWeight: FontWeight.w400,
                    fontSize: screen_height * 0.02,
                  ),),

                Text('github.com',
                  style: GoogleFonts.inter(
                    fontWeight: FontWeight.w300,
                    fontSize: screen_height * 0.015,
                  ),)
              ],
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
                Text(link,
                style: GoogleFonts.inter(
                  fontWeight: FontWeight.w400,
                  fontSize: screen_height * 0.02,
                ),)
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
          height: screen_height*0.15,
          width: screen_width*0.1,
          margin: EdgeInsets.all(8.0),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                SvgPicture.asset('images/linkedin.svg'),

                Text('Lets connect!',
                  style: GoogleFonts.inter(
                    fontWeight: FontWeight.w400,
                    fontSize: screen_height * 0.02,
                  ),),

                Text('linkedin.com',
                  style: GoogleFonts.inter(
                    fontWeight: FontWeight.w300,
                    fontSize: screen_height * 0.015,
                  ),)
              ],
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

      case CardType.Dribble:

        return Container(

          decoration: BoxDecoration(
            color: Color(0xffD61696),

            borderRadius: BorderRadius.circular(screen_width*0.006),
          ),
          height: screen_height*0.15,
          width: screen_width*0.1,
          margin: EdgeInsets.all(8.0),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SvgPicture.asset('images/dribble.svg',
                height: 50,),

                Text('Dribble',
                  style: GoogleFonts.inter(
                    color: Colors.white,
                    fontWeight: FontWeight.w700,
                    fontSize: screen_height * 0.02,
                  ),),

                Text('@imeronn',
                  style: GoogleFonts.inter(
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                    fontSize: screen_height * 0.015,
                  ),)
              ],
            ),
          ),
        );
      case CardType.Twitter:

        return Container(

          decoration: BoxDecoration(
            border: Border.all(
                width: 2.5,
              color: Color(0xff1DA1F2)),
            borderRadius: BorderRadius.circular(screen_width*0.006),
          ),
          height: screen_height*0.15,
          width: screen_width*0.1,
          margin: EdgeInsets.all(8.0),
          child: Padding(
            padding: const EdgeInsets.all(3.0),
            child: Column(
              children: [
                SvgPicture.asset('images/twitter.svg'),

                Text('Lets connect!',
                  style: GoogleFonts.inter(
                    fontWeight: FontWeight.w400,
                    fontSize: screen_height * 0.02,
                  ),),

                Text('@imeronn',
                  style: GoogleFonts.inter(
                    fontWeight: FontWeight.w300,
                    fontSize: screen_height * 0.015,
                  ),),
                Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(screen_width*0.006),
                ),

                  child: ElevatedButton(onPressed: (){},
                      child:Text('Follow',
                      style: GoogleFonts.inter(
                        color: Colors.white,
                        fontWeight: FontWeight.w400,
                        fontSize: screen_height * 0.01,
                      ),)),
                )
              ],
            ),
          ),
        );
      case CardType.Instagram:
        return Container(

          decoration: BoxDecoration(
            border: Border.all(
                width: 2.5,
                color: Color(0xFFEBEBEB)),
            borderRadius: BorderRadius.circular(screen_width*0.006),
          ),
          height: screen_height*0.15,
          width: screen_width*0.1,
          margin: EdgeInsets.all(8.0),
          child: Padding(
            padding: const EdgeInsets.all(3.0),
            child: Column(
              children: [
                SvgPicture.asset('images/instagram2.svg'),


                Text('@imeronn',
                  style: GoogleFonts.inter(
                    fontWeight: FontWeight.w400,
                    fontSize: screen_height * 0.015,
                  ),),
                Container(
                  decoration: BoxDecoration(
                    color: Color(0xff1DB1EC),
                    borderRadius: BorderRadius.circular(screen_width*0.006),
                  ),

                  child: ElevatedButton(onPressed: (){},
                      child:Text('Follow',
                        style: GoogleFonts.inter(
                          color: Colors.white,
                          fontWeight: FontWeight.w400,
                          fontSize: screen_height * 0.01,
                        ),)),
                )
              ],
            ),
          ),
        );


      default:
        return Container();
    }
  }
}