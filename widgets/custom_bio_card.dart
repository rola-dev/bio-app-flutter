import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomBioCard extends StatelessWidget {
  final IconData leadingIcon;
  final String title;
  final String subtitle;
  final IconData trailingIcon;
  final double bottomMargin;

  const CustomBioCard({
    required this.leadingIcon,
    required this.title,
    required this.subtitle,
    required this.trailingIcon,
    this.bottomMargin = 0,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 7,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      margin:
          EdgeInsetsDirectional.only(bottom: bottomMargin, start: 20, end: 20),
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Row(
          children: [
            Icon(leadingIcon),
            const SizedBox(width: 10),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: GoogleFonts.nunito(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
                Text(
                  subtitle,
                  style: GoogleFonts.nunito(
                    fontWeight: FontWeight.w500,
                    fontSize: 16,
                  ),
                ),
              ],
            ),
            const Spacer(),
            IconButton(onPressed: () {}, icon: Icon(trailingIcon)),
          ],
        ),
      ),
    );
  }
}
