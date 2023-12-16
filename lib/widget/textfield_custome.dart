import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

import '../theme.dart';

class TextfieldCustome extends StatelessWidget {
  const TextfieldCustome(
      {super.key,
      this.title,
      this.hintText,
      this.controller,
      this.obscureText = false,
      this.prefixIcon,
      this.keyboardType});
  final String? title;
  final String? hintText;
  final TextEditingController? controller;
  final TextInputType? keyboardType;
  final bool obscureText;
  final Widget? prefixIcon;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title ?? "",
          style: GoogleFonts.poppins(
            fontSize: 14,
            fontWeight: reguler,
            color: textBlack,
          ),
        ),
        const SizedBox(height: 6),
        TextField(
          obscureText: obscureText,
          keyboardType: keyboardType,
          controller: controller,
          decoration: InputDecoration(
            prefixIcon: prefixIcon,
            border: OutlineInputBorder(
              borderSide: BorderSide(color: abuMuda),
              borderRadius: BorderRadius.circular(8),
            ),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: abuMuda),
              borderRadius: BorderRadius.circular(8),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: merahMuda),
              borderRadius: BorderRadius.circular(8),
            ),
            counterStyle: GoogleFonts.poppins(
              fontSize: 12.sp,
              fontWeight: reguler,
              color: textAbu,
            ),
            hintText: hintText ?? '',
            hintStyle: GoogleFonts.poppins(
              fontSize: 12.sp,
              fontWeight: reguler,
              color: textAbu,
            ),
          ),
        ),
      ],
    );
  }
}
