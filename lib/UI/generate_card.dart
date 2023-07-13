
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

import 'Profile Cards/Cards_UI_Data.dart';

class GenerateCard extends StatefulWidget {
  const GenerateCard({Key? key}) : super(key: key);

  @override
  State<GenerateCard> createState() => _GenerateCardState();
}

class _GenerateCardState extends State<GenerateCard> {
  List<CardType> selectedCards = [];
  String link = '';
  bool showTextField = false;

  void addCard() {
    if (link.isNotEmpty) {
      CardType cardType = getCardTypeFromLink(link);
      setState(() {
        selectedCards.add(cardType);
        link = '';
        showTextField = false;
      });
    }
  }

  CardType getCardTypeFromLink(String link) {
    if (link.contains('linkedin.com')) {
      return CardType.LinkedIn;
    } else if (link.contains('figma.com')) {
      return CardType.Figma;
    } else if (link.contains('layers.com')) {
      return CardType.Layers;
    } else if (link.contains('dribble.com')) {
      return CardType.Dribble;
    } else if (link.contains('github.com')) {
      return CardType.Github;
    } else if (link.contains('twitter.com')) {
      return CardType.Twitter;
    } else if (link.contains('producthunt.com')) {
      return CardType.ProductHunt;
    } else if (link.contains('instagram.com')) {
      return CardType.Instagram;
    }
    return CardType.AddText;
  }

  @override
  Widget build(BuildContext context) {
    double screen_height = MediaQuery.of(context).size.height;
    double screen_width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Wrap(
        children: [
          Container(
            decoration: BoxDecoration(
              border: Border.all(width: 2.5, color: Color(0xFFEBEBEB)),
              borderRadius: BorderRadius.circular(18),
            ),
            height: screen_height * 0.15,
            width: screen_width * 0.1,
            child: showTextField
                ? Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height: screen_height * 0.053,
                  width: screen_width * 0.085,
                  child: TextField(
                    onChanged: (value) {
                      setState(() {
                        link = value;
                      });
                    },
                    decoration: InputDecoration(
                      focusedBorder:  OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: const BorderSide(
                          color: Color(0xFFB6B6B6),
                        ),
                      ),

                      labelText: 'Enter Profile Link',
                      labelStyle: GoogleFonts.inter(
                        textStyle: TextStyle(
                          fontWeight: FontWeight.w400,
                          color: Colors.black,
                          fontSize: screen_height*0.0176,
                        ),
                      ),
                      floatingLabelBehavior: FloatingLabelBehavior.always,
                      contentPadding:
                      const EdgeInsets.symmetric(vertical: 12, horizontal: 8),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(13),
                        borderSide: const BorderSide(
                          width: 2.5,
                          color:Color(0xFFEBEBEB),
                        ),
                      ),
                    ),
                  ),
                ),

                Container(
                  height: screen_height * 0.04,
                  width: screen_width * 0.075,
                  decoration: BoxDecoration(
                    border: Border.all(width: 2.5, color: Color(0xFFEBEBEB)),
                    borderRadius: BorderRadius.circular(13),
                  ),
                  child: FloatingActionButton(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(13),
                    ),
                    backgroundColor: Color(0xFF0EBEBEB),
                    onPressed: addCard,
                    child: Text(
                      'Add Card',
                      style: GoogleFonts.inter(
                        textStyle: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w600,
                          fontSize: screen_height * 0.016,
                        ),
                      ),
                    ),
                  ),
                ),

              ],
            )
                : Column(
              mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Center(
                      child: Container(
              height: screen_height * 0.053,
              width: screen_width * 0.085,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(18.0),

                          border: Border.all(width: 2.5, color: Color(0xFFEBEBEB)),

                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            GestureDetector
                              (onTap: (){
                                  setState(() {
                                    showTextField = true;
                                  });},
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(11.0),
                                child: Container(
                                    height: screen_height * 0.03,
                                    width: screen_width * 0.019,
                                    decoration: BoxDecoration(
                                      // borderRadius: BorderRadius.circular(13.0),

                                      border: Border.all(width: 2.5, color: Color(0xFFEBEBEB)),

                                    ),
                                    child: SvgPicture.asset('images/link.svg')),
                              ),),
                            GestureDetector
                              (
                                onTap: (){
                                  setState(() {
                                    showTextField = true;
                                  });},child: ClipRRect(
                                    borderRadius: BorderRadius.circular(11.0),
                                    child: Container(
                                        height: screen_height * 0.029,
                                        width: screen_width * 0.017,
                                        decoration: BoxDecoration(


                                    border: Border.all(width: 2.5, color: Color(0xFFEBEBEB)),

                                ),child: Image.asset('images/image.png')),
                                  )),
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  showTextField = true;
                                });
                              },
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(11.0),
                                child: Container(
                                  height: screen_height * 0.029,
                                  width: screen_width * 0.017,
                                  decoration: BoxDecoration(


                                    border: Border.all(width: 2.5, color: Color(0xFFEBEBEB)),
                                  ),
                                  child: Image.asset('images/text.png.png'),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
          ),
          ...selectedCards.map((cardType) => CustomCard(cardType: cardType, link: link)).toList(),
        ],
      ),
    );
  }
}

