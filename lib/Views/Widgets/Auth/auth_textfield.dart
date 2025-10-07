import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AuthTextfield extends StatelessWidget {
  final TextInputType keyboardType;
  final String labelText;
  final bool obscureText;
  final IconData icon;
  final double fontSize;
  final double labelSize;
  final double iconSize;

  AuthTextfield({
    required this.keyboardType,
    required this.labelText,
    required this.obscureText,
    required this.icon,
    required this.fontSize,
    required this.labelSize,
    required this.iconSize
  });


  @override
  Widget build(BuildContext context) {
    return TextField(
                  textAlign: TextAlign.start,
                  style: GoogleFonts.poppins(
                    fontSize: fontSize,
                    color: Color(0xff000221),
                  ),
                  textInputAction: TextInputAction.none,

                  obscureText: obscureText,
                  autofocus: false,
                  keyboardType: keyboardType,
                  textAlignVertical: TextAlignVertical.top,
                  decoration: InputDecoration(
                    floatingLabelBehavior: FloatingLabelBehavior.never,
                    fillColor: Color(0xffe7e7f2),
                    filled: true,
                    prefixIcon: Icon(
                      icon,
                      size: iconSize,
                      color: Color(0xff000221),
                    ),
                    label: Text(
                    labelText,
                      style: GoogleFonts.poppins(
                        fontSize: labelSize,
                        color: Color(0xff000221),
                      ),
                    ),
                    border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                );
  }
}