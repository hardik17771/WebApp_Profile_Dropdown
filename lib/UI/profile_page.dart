import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  TextEditingController nameController = TextEditingController();
  TextEditingController bioController = TextEditingController();
  TextEditingController tagController = TextEditingController();


  @override
  void initState() {
    super.initState();
    nameController.text = 'Name';
    bioController.text = 'Click to add Bio..';
    tagController.text = 'Role';
  }

  @override
  Widget build(BuildContext context) {
    double screen_height = MediaQuery.of(context).size.height;
    double screen_width = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Row(
        children: [
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(
                top: screen_height * 0.06,
                left: screen_width * 0.07,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  GestureDetector(
                    onTap: () {

                    },
                    child: Container(
                      height: screen_height * 0.4,
                      width: screen_width * 0.15,
                      child: SvgPicture.asset('images/divabsolute.svg'),
                    ),
                  ),
                  SizedBox(width: screen_width * 0.05),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      EditableText(
                        controller: nameController,
                        focusNode: FocusNode(),
                        style: GoogleFonts.inter(
                          fontWeight: FontWeight.w700,
                          fontSize: screen_height * 0.07,
                        ),
                        cursorColor: Colors.blue,
                        backgroundCursorColor: Colors.blue,
                      ),
                      SizedBox(height: screen_height * 0.01),
                      EditableText(
                        controller: tagController,
                        focusNode: FocusNode(),
                        style: GoogleFonts.inter(
                          fontWeight: FontWeight.w400,
                          fontSize: screen_height * 0.025,
                          color: Color(0xFF565656),
                        ),
                        cursorColor: Colors.blue,
                        backgroundCursorColor: Colors.blue,
                      ),
                      SizedBox(height: screen_height * 0.01),
                      EditableText(
                        controller: bioController,
                        focusNode: FocusNode(),
                        style: GoogleFonts.inter(
                          fontWeight: FontWeight.w400,
                          color: Color(0xFF565656),
                          fontSize: screen_height * 0.025,
                        ),
                        cursorColor: Colors.blue,
                        backgroundCursorColor: Colors.blue,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Expanded(child:
          Column(
            children: [
               Container(
    decoration: BoxDecoration(
      border: Border.all(
          color: Color(0xFFEBEBEB)),
    borderRadius: BorderRadius.circular(screen_width*0.002),
    ),
    height: screen_height*0.05,
    width: screen_width*0.4,
    ),
            ],
          ),)

        ],
      ),
    );
  }
}
