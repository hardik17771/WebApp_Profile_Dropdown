
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

class CustomCard extends StatefulWidget {
  final CardType cardType;
  final String link;
  final double cardWidth;
  final double cardHeight;

  const CustomCard({
    Key? key,
    required this.cardType,
    required this.link,
    required this.cardWidth,
    required this.cardHeight,
  }) : super(key: key);

  @override
  State<CustomCard> createState() => _CustomCardState();
}

class _CustomCardState extends State<CustomCard> {
  bool isExpanded = false;

  Widget buildCollapsedCard() {
    switch (widget.cardType) {
      case CardType.Github:
        return GestureDetector(
          onTap: () {
            setState(() {
              isExpanded = !isExpanded;
            });
          },
          child: Container(
            decoration: BoxDecoration(
              border: Border.all(width: 2.5, color: Color(0xFFEBEBEB)),
              borderRadius: BorderRadius.circular(18),
            ),
            height: widget.cardHeight ,
            width: widget.cardWidth*0.4257,
            margin: EdgeInsets.all(8.0),
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(
                children: [
                  SvgPicture.asset('images/github.svg'),
                  Text(
                    widget.link,
                    style: GoogleFonts.inter(
                      fontWeight: FontWeight.w400,
                      fontSize: widget.cardHeight * 0.02,
                    ),
                  ),
                  Text(
                    'github.com',
                    style: GoogleFonts.inter(
                      fontWeight: FontWeight.w300,
                      fontSize: widget.cardHeight *0.06,
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      case CardType.AddText:
        return GestureDetector(
          onTap: () {
            setState(() {
              isExpanded = !isExpanded;
            });
          },
          child: Container(
            decoration: BoxDecoration(
              border: Border.all(width: 2.5, color: Color(0xFFEBEBEB)),
              borderRadius: BorderRadius.circular(18),
            ),
            height: widget.cardHeight,
            width: widget.cardWidth*0.4257,
            margin: EdgeInsets.all(8.0),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  SvgPicture.asset('assets/images/github.svg'),
                  Text(
                    widget.link,
                    style: GoogleFonts.inter(
                      fontWeight: FontWeight.w400,
                      fontSize: widget.cardHeight * 0.02,
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      case CardType.LinkedIn:
        return GestureDetector(
          onTap: () {
            setState(() {
              isExpanded = !isExpanded;
            });
          },
          child: Container(
            decoration: BoxDecoration(
              border: Border.all(width: 2.5, color: Color(0xFFEBEBEB)),
              borderRadius: BorderRadius.circular(18),
            ),
            height:widget.cardHeight,
            width: widget.cardWidth*0.4257,
            margin: EdgeInsets.all(8.0),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SvgPicture.asset('images/linkedin.svg'),
                  Text(
                    'Lets connect!',
                    style: GoogleFonts.inter(
                      fontWeight: FontWeight.w400,
                      fontSize: widget.cardHeight * 0.08,
                    ),
                  ),
                  Text(
                    'linkedin.com',
                    style: GoogleFonts.inter(
                      fontWeight: FontWeight.w300,
                      fontSize: widget.cardHeight * 0.1,
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      case CardType.Layers:
        return GestureDetector(
          onTap: () {
            setState(() {
              isExpanded = !isExpanded;
            });
          },
          child: Container(
            decoration: BoxDecoration(
              border: Border.all(width: 2.5, color: Color(0xFFEBEBEB)),
              borderRadius: BorderRadius.circular(18),
            ),
            height: widget.cardHeight,
            width: widget.cardWidth*0.4257,
            color: Colors.blue,
            margin: EdgeInsets.all(8.0),
            child: Center(
              child: Text(
                'Github Card',
                style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              ),
            ),
          ),
        );
      case CardType.Dribble:
        return GestureDetector(
          onTap: () {
            setState(() {
              isExpanded = !isExpanded;
            });
          },
          child: Container(
            decoration: BoxDecoration(
              color: Color(0xffD61696),
              borderRadius: BorderRadius.circular(18),
            ),
            height:widget.cardHeight,
            width: widget.cardWidth*0.4257,
            margin: EdgeInsets.all(8.0),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SvgPicture.asset(
                    'images/dribble.svg',
                    height: 50,
                  ),
                  Text(
                    'Dribble',
                    style: GoogleFonts.inter(
                      color: Colors.white,
                      fontWeight: FontWeight.w700,
                      fontSize: widget.cardHeight * 0.02,
                    ),
                  ),
                  Text(
                    '@imeronn',
                    style: GoogleFonts.inter(
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                      fontSize: widget.cardHeight * 0.015,
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      case CardType.Twitter:
        return GestureDetector(
          onTap: () {
            setState(() {
              isExpanded = !isExpanded;
            });
          },
          child: Container(
            decoration: BoxDecoration(
              border: Border.all(width: 2.5, color: Color(0xff1DA1F2)),
              borderRadius: BorderRadius.circular(18),
            ),
            height:widget.cardHeight,
            width: widget.cardWidth*0.4257,
            margin: EdgeInsets.all(8.0),
            child: Padding(
              padding: const EdgeInsets.all(3.0),
              child: Column(
                children: [
                  SvgPicture.asset('images/twitter.svg'),
                  Text(
                    'Lets connect!',
                    style: GoogleFonts.inter(
                      fontWeight: FontWeight.w400,
                      fontSize: widget.cardHeight * 0.02,
                    ),
                  ),
                  Text(
                    '@imeronn',
                    style: GoogleFonts.inter(
                      fontWeight: FontWeight.w300,
                      fontSize: widget.cardHeight * 0.015,
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(18),
                    ),
                    child: ElevatedButton(
                      onPressed: () {},
                      child: Text(
                        'Follow',
                        style: GoogleFonts.inter(
                          color: Colors.white,
                          fontWeight: FontWeight.w400,
                          fontSize: widget.cardHeight * 0.01,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      case CardType.Instagram:
        return GestureDetector(
          onTap: () {
            setState(() {
              isExpanded = !isExpanded;
            });
          },
          child: Container(
            decoration: BoxDecoration(
              border: Border.all(width: 2.5, color: Color(0xFFEBEBEB)),
              borderRadius: BorderRadius.circular(18),
            ),
            height:widget.cardHeight,
            width: widget.cardWidth*0.4257,
            margin: EdgeInsets.all(8.0),
            child: Padding(
              padding: const EdgeInsets.all(3.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SvgPicture.asset('images/instagram2.svg'),
                  Text(
                    '@imeronn',
                    style: GoogleFonts.inter(
                      fontWeight: FontWeight.w400,
                      fontSize: widget.cardHeight * 0.1,
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Color(0xff1DB1EC),
                      borderRadius: BorderRadius.circular(18),
                    ),
                    child: ElevatedButton(
                      onPressed: () {},
                      child: Text(
                        'Follow',
                        style: GoogleFonts.inter(
                          color: Colors.white,
                          fontWeight: FontWeight.w400,
                          fontSize: widget.cardHeight * 0.1,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      default:
        return Container();
    }
  }

  Widget buildExpandedCard() {
    switch (widget.cardType) {
      case CardType.Github:
        return GestureDetector(
          onTap: () {
            setState(() {
              isExpanded = !isExpanded;
            });
          },
          child: Container(
            decoration: BoxDecoration(
              border: Border.all(width: 2.5, color: Color(0xFFEBEBEB)),
              borderRadius: BorderRadius.circular(18),
            ),
            height: widget.cardHeight,
            width: widget.cardWidth*0.9,
            margin: EdgeInsets.all(8.0),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  SvgPicture.asset('images/github.svg'),
                  Text(
                    widget.link,
                    style: GoogleFonts.inter(
                      fontWeight: FontWeight.w400,
                      fontSize: widget.cardHeight * 0.024,
                    ),
                  ),
                  Text(
                    'github.com',
                    style: GoogleFonts.inter(
                      fontWeight: FontWeight.w300,
                      fontSize: widget.cardHeight * 0.016,
                    ),
                  ),
                  // Additional widgets for expanded view
                ],
              ),
            ),
          ),
        );
      case CardType.AddText:
        return GestureDetector(
          onTap: () {
            setState(() {
              isExpanded = !isExpanded;
            });
          },
          child: Container(
            decoration: BoxDecoration(
              border: Border.all(width: 2.5, color: Color(0xFFEBEBEB)),
              borderRadius: BorderRadius.circular(18),
            ),
            height: widget.cardHeight ,
            width: widget.cardWidth * 0.9,
            margin: EdgeInsets.all(8.0),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  SvgPicture.asset('assets/images/github.svg'),
                  Text(
                    widget.link,
                    style: GoogleFonts.inter(
                      fontWeight: FontWeight.w400,
                      fontSize: widget.cardHeight * 0.024,
                    ),
                  ),
                  // Additional widgets for expanded view
                ],
              ),
            ),
          ),
        );
      case CardType.LinkedIn:
        return GestureDetector(
          onTap: () {
            setState(() {
              isExpanded = !isExpanded;
            });
          },
          child: Container(
            decoration: BoxDecoration(
              border: Border.all(width: 2.5, color: Color(0xFFEBEBEB)),
              borderRadius: BorderRadius.circular(18),
            ),
            height: widget.cardHeight ,
            width: widget.cardWidth * 0.9,
            margin: EdgeInsets.all(8.0),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SvgPicture.asset('images/linkedin.svg'),
                  Text(
                    'Lets connect!',
                    style: GoogleFonts.inter(
                      fontWeight: FontWeight.w400,
                      fontSize: widget.cardHeight * 0.08,
                    ),
                  ),
                  Text(
                    'linkedin.com',
                    style: GoogleFonts.inter(
                      fontWeight: FontWeight.w300,
                      fontSize: widget.cardHeight * 0.1,
                    ),
                  ),
                  // Additional widgets for expanded view
                ],
              ),
            ),
          ),
        );
      case CardType.Layers:
        return GestureDetector(
          onTap: () {
            setState(() {
              isExpanded = !isExpanded;
            });
          },
          child: Container(
            decoration: BoxDecoration(
              border: Border.all(width: 2.5, color: Color(0xFFEBEBEB)),
              borderRadius: BorderRadius.circular(18),
              color: Colors.blue,
            ),
            height: widget.cardHeight ,
            width: widget.cardWidth * 0.9,
            margin: EdgeInsets.all(8.0),
            child: Center(
              child: Text(
                'Github Card',
                style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              ),
            ),
          ),
        );
      case CardType.Dribble:
        return GestureDetector(
          onTap: () {
            setState(() {
              isExpanded = !isExpanded;
            });
          },
          child: Container(
            decoration: BoxDecoration(
              color: Color(0xffD61696),
              borderRadius: BorderRadius.circular(18),
            ),
            height: widget.cardHeight ,
            width: widget.cardWidth * 0.9,
            margin: EdgeInsets.all(8.0),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SvgPicture.asset(
                    'images/dribble.svg',
                    height: widget.cardHeight
                  ),
                  Text(
                    'Dribble',
                    style: GoogleFonts.inter(
                      color: Colors.white,
                      fontWeight: FontWeight.w700,
                      fontSize: widget.cardHeight * 0.024,
                    ),
                  ),
                  Text(
                    '@imeronn',
                    style: GoogleFonts.inter(
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                      fontSize: widget.cardHeight * 0.016,
                    ),
                  ),
                  // Additional widgets for expanded view
                ],
              ),
            ),
          ),
        );
      case CardType.Twitter:
        return GestureDetector(
          onTap: () {
            setState(() {
              isExpanded = !isExpanded;
            });
          },
          child: Container(
            decoration: BoxDecoration(
              border: Border.all(width: 2.5, color: Color(0xff1DA1F2)),
              borderRadius: BorderRadius.circular(18),
            ),
            height: widget.cardHeight,
            width: widget.cardWidth*0.9,
            margin: EdgeInsets.all(8.0),
            child: Padding(
              padding: const EdgeInsets.all(3.0),
              child: Column(
                children: [
                  SvgPicture.asset('images/twitter.svg'),
                  Text(
                    'Lets connect!',
                    style: GoogleFonts.inter(
                      fontWeight: FontWeight.w400,
                      fontSize: widget.cardHeight * 0.024,
                    ),
                  ),
                  Text(
                    '@imeronn',
                    style: GoogleFonts.inter(
                      fontWeight: FontWeight.w300,
                      fontSize: widget.cardHeight * 0.016,
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(18),
                    ),
                    child: ElevatedButton(
                      onPressed: () {},
                      child: Text(
                        'Follow',
                        style: GoogleFonts.inter(
                          color: Colors.white,
                          fontWeight: FontWeight.w400,
                          fontSize: widget.cardHeight * 0.016,
                        ),
                      ),
                    ),
                  ),
                  // Additional widgets for expanded view
                ],
              ),
            ),
          ),
        );
      case CardType.Instagram:
        return GestureDetector(
          onTap: () {
            setState(() {
              isExpanded = !isExpanded;
            });
          },
          child: Container(
            decoration: BoxDecoration(
              border: Border.all(width: 2.5, color: Color(0xFFEBEBEB)),
              borderRadius: BorderRadius.circular(18),
            ),
            height: widget.cardHeight,
            width: widget.cardWidth*0.9,
            margin: EdgeInsets.all(8.0),
            child: Padding(
              padding: const EdgeInsets.all(3.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SvgPicture.asset('images/instagram2.svg'),
                  Text(
                    '@imeronn',
                    style: GoogleFonts.inter(
                      fontWeight: FontWeight.w400,
                      fontSize: widget.cardHeight * 0.1,
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Color(0xff1DB1EC),
                      borderRadius: BorderRadius.circular(18),
                    ),
                    child: ElevatedButton(
                      onPressed: () {},
                      child: Text(
                        'Follow',
                        style: GoogleFonts.inter(
                          color: Colors.white,
                          fontWeight: FontWeight.w400,
                          fontSize: widget.cardHeight * 0.1,
                        ),
                      ),
                    ),
                  ),
                  // Additional widgets for expanded view
                ],
              ),
            ),
          ),
        );
      default:
        return Container();
    }
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedCrossFade(
      duration: const Duration(milliseconds: 300),
      crossFadeState: isExpanded ? CrossFadeState.showSecond : CrossFadeState.showFirst,
      firstChild: buildCollapsedCard(),
      secondChild: buildExpandedCard(),
    );
  }
}


