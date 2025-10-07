import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AuthHeading extends StatelessWidget {
  final String mainText;
  final String subText;
  final String logo;
  final double fontSize;
  final double logoSize;

  AuthHeading({
    required this.mainText,
    required this.subText,
    required this.logo,
    required this.fontSize,
    required this.logoSize
    });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  mainText,
                  style: GoogleFonts.poppins(
                    fontSize: fontSize,
                    color: const Color(0xff000221),
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(width: 5),
                Image.asset(
                  logo,
                  height: logoSize,
                  width: logoSize,
                  filterQuality: FilterQuality.high,
                ),
              ],
            ),
            const SizedBox(height: 5),
            Text(
              subText,
              style: GoogleFonts.poppins(
                fontSize: fontSize,
                color: const Color(0xff000221),
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
