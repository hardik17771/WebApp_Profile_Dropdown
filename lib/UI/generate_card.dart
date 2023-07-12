import 'package:flutter/material.dart';
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

  void addCard() {
    CardType cardType = getCardTypeFromLink(link);
    setState(() {
      selectedCards.add(cardType);
      link = '';
    });
  }

  CardType getCardTypeFromLink(String link) {

    if (link.contains('linkedin.com')) {
      return CardType.LinkedIn;
    } else if (link.contains('figma.com')) {
      return CardType.Figma;
    } else if (link.contains('layers.com')) {
      return CardType.Layers;
    }
    else if (link.contains('dribble.com')) {
      return CardType.Dribble;
    }
    else if (link.contains('github.com')) {
      return CardType.Github;
    }
    else if (link.contains('twitter.com')) {
      return CardType.Twitter;
    }
    else if (link.contains('producthunt.com')) {
      return CardType.ProductHunt;
    }

    else if (link.contains('instagram.com')) {
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
          GestureDetector(
            onTap: () {
              showModalBottomSheet(
                context: context,
                builder: (context) {
                  return Column(
                    children: [
                      TextField(
                        onChanged: (value) {
                          setState(() {
                            link = value;
                          });
                        },
                        decoration: InputDecoration(
                          labelText: 'Enter Link',
                        ),
                      ),
                      ElevatedButton(
                        onPressed: addCard,
                        child: Text('Add'),
                      ),
                    ],
                  );
                },
              );
            },
            child:  Container(
              decoration: BoxDecoration(
                border: Border.all(
                  width: 2.5,
                    color: Color(0xFFEBEBEB)),
                borderRadius: BorderRadius.circular(screen_width*0.006),
              ),
              height: screen_height*0.15,
              width: screen_width*0.1,
            ),
          ),
          ...selectedCards.map((cardType) => CustomCard(cardType: cardType, link: link)).toList(),
        ],
      ),
    );
  }
}


