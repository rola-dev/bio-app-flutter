import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomListTile extends StatelessWidget {
  final Widget leading;
  final String title;
  final String subtitle;
  final Widget trailing;
  final double marginBotton;

  const CustomListTile({
    required this.leading,
    required this.title,
    required this.subtitle,
    required this.trailing,
    this.marginBotton = 0,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin:
          EdgeInsetsDirectional.only(bottom: marginBotton, start: 20, end: 20),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: ListTile(
        iconColor: Colors.black,
        textColor: Colors.black,
        onTap: () {
          debugPrint('on tap');
        },
        //selectedColor: Colors.pink,

        //shape: RoundedRectangleBorder(
        // borderRadius: BorderRadius.circula r(20),
        //side: BorderSide(color: Colors.black, width: 2)
        //),
        contentPadding: EdgeInsetsDirectional.symmetric(horizontal: 10),
        horizontalTitleGap: 0,
        //minLeadingWidth: 0,
        minVerticalPadding: 0,
        leading: leading,
        title: Text(
          title,
          style: GoogleFonts.nunito(fontSize: 16, fontWeight: FontWeight.bold),
        ),
        subtitle: Text(
          subtitle,
          style: GoogleFonts.nunito(
            fontSize: 14,
            fontWeight: FontWeight.w500,
            /*color: Colors.black*/
          ),
        ),
        trailing: trailing,
      ),
    );
  }
}
