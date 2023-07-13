import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class LinkCard extends StatelessWidget {
  final TextEditingController linkController;
  final VoidCallback onAddCard;

  const LinkCard({super.key,
    required this.linkController,
    required this.onAddCard,
  });

  @override
  Widget build(BuildContext context) {
    double screen_height = MediaQuery.of(context).size.height;
    double screen_width = MediaQuery.of(context).size.width;
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Container(
          height: screen_height * 0.053,
          width: screen_width * 0.085,
          child: TextField(
            controller: linkController,
            decoration: InputDecoration(
              focusedBorder: OutlineInputBorder(
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
                  fontSize: screen_height * 0.0176,
                ),
              ),
              floatingLabelBehavior: FloatingLabelBehavior.always,
              contentPadding:
              const EdgeInsets.symmetric(vertical: 12, horizontal: 8),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(13),
                borderSide: const BorderSide(
                  width: 2.5,
                  color: Color(0xFFEBEBEB),
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
            onPressed: onAddCard,
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
    );
  }
}
